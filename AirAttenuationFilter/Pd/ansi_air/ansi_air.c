
#include "m_pd.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <stdint.h>
#include <complex.h>
/* this needs to be included after complex.h, in order to  */
/* use c99 _Complex datatypes in fftw3 */
#include "fftw3.h"

//Room temperature in Kelvin (20 deg C)
#define gkMslRoomTempK  293.15

//triple point of water in Kelvin (YES it's .16 not .15)
#define gkMslTTripleH2O 273.16

//International standard atmosphere at mean sea level, in kiloPascals
#define gkMslPref      101.325


typedef struct _ansi_air {
    t_object    ob;
    
    float     tempC;
    float     hum;
    float     pressure;
    float     dist;
    
    int         fftlength;
    int         fftlengthhalf;
    
    float       fs;
    
    void        *outlet1, *outlet2, *outinfo;
    
} t_ansi_air;

static t_class *ansi_air_class;

float mslCelsius2Kelvin(float fCelsius)
{
	return fCelsius + (float)273.15;
}


// Compute molar humidity from relative humidity

// Test: if frelhumidity = 100, ftemerature = 17, and
// fpressurekPa = 95.0, result should be 2.038.

float relativetomolar( float frelhumidity,
                      float ftemperature,
                      float fpressurekPa )
{
    float ftempratio = gkMslTTripleH2O/( mslCelsius2Kelvin(ftemperature) );
    float ftempcoeff = (float) pow( (float)ftempratio, 1.261 );
    float C= -6.8346f * ftempcoeff + 4.6151f;
    float fpsatpr = (float)pow(10.0, (float)C );
    float fpressureratio = gkMslPref/fpressurekPa;
    float fmolarhumidity = frelhumidity*fpsatpr*fpressureratio;
    
    return fmolarhumidity;
}

// Compute FRO, vibrational relaxation frequency for oxygen

float FRO( float fpressurekPa, float fmolarhumidity )
{
    float denominator = 0.391f + fmolarhumidity;
    float numerator = (40400.0f * fmolarhumidity)*(0.02f + fmolarhumidity);
    float fraction = numerator/denominator;
    float papr = fpressurekPa/gkMslPref;
    float fro = papr*(24.0f + fraction);
    
    return fro;
}

// Compute FRN, vibrational relaxation frequency for nitrogen

float FRN( float ftemperature,
          float fpressurekPa,
          float fmolarhumidity )
{
    float papr = fpressurekPa/gkMslPref;
    float ftempratio = ( mslCelsius2Kelvin(ftemperature) )/gkMslRoomTempK;
    float ftempratio2 = (float)pow((float)ftempratio, -0.5);
    float ftempratio3 = (float)pow((float)ftempratio, -1.0 / 3.0 );
    float term1 = -4.710f * (ftempratio3 - 1.0f);
    float term2 = (float)exp((float)term1);
    float term3 = 9.0f + 280.0f * fmolarhumidity*term2;
    float frn = papr*ftempratio2*term3;
    
    return frn;
}

// Calculate attenuation coefficient

float alpha( float ffrequency,
            float fpressurekPa,
            float ftemperature,
            float frO,
            float frN )
{
    float a;
    float term1, term2, term3, term4, term5;
    float term6, term7, term8, term9, term10;
    float temp52;
    
    float fTemperatureK = mslCelsius2Kelvin(ftemperature);  //Convert ftemperature to Kelvin
    
    float ftempratio = ( fTemperatureK )/gkMslRoomTempK;
    float prpa = gkMslPref/fpressurekPa;
    
    term10 = 1.840f * 1E-11f * prpa * (float)sqrt((float)ftempratio);
    term9 = frN/(frN*frN+ffrequency*ffrequency);
    term8 = (float)exp(-3352.0 / (float)fTemperatureK );
    term7 = frO/(frO*frO+ffrequency*ffrequency);
    term6 = (float)exp(-2239.1 / (float)fTemperatureK );
    term5 = 0.1068f * term8*term9;
    term4 = 0.01275f * term6*term7;
    term3 = term4+term5;
    temp52 = (float)pow((float)ftempratio, -5.0 / 2.0 );
    term2 = temp52*term3;
    term1 = term10+term2;
    a = 8.686f * ffrequency * ffrequency * term1;
    
    return a;
}


// Compute attenuation of sound due to atmospheric conditions.
// Reference ANSI Method For Calculation of the Absorption of
// Sound by the Atmosphere, ANSI S1.26-1995 (ASA 113-1995)
// Revision of  ANSI S1.26-1978 (R1989)

// This document includes extensive tables which can be (were) used to
// test the code in this module.

float fnMAPPAttenuate(
                      float ftemperature,
                      float fpressurekPa,
                      float frelhumidity,
                      float ffrequency
                      )
//attn is returned with attenuation coeffs at the desired frequencies
//xvals are the desired frequencies
{
    // Compute molar humidity from relative humidity (0%-100%)
    
    float fmolarhumidity = relativetomolar( frelhumidity,
                                           ftemperature,
                                           fpressurekPa );
    
    // Compute FRO - relaxation frequency for oxygen
    
    float frO = FRO( fpressurekPa, fmolarhumidity );
    
    // Compute FRN - relaxation frequency for nitrogen
    
    float frN = FRN( ftemperature, fpressurekPa, fmolarhumidity );
    
    // Compute attenuation at passed frequency, return value
    
    float atten = alpha( ffrequency,
                        fpressurekPa,
                        ftemperature,
                        frO, frN );
    
    return atten;
}


void ansi_air_bang(t_ansi_air *x)
{
    float fs = x->fs;
    float TempC = x->tempC;
    float Hum = x->hum;
    float Pressure = x->pressure;
    float Distance = x->dist;
    
    int i, fftlength = x->fftlength;
    int fftlengthhalf = x->fftlengthhalf;
    float f2[fftlengthhalf], air[fftlengthhalf];
    float _Complex Hair[fftlengthhalf], Hair2[fftlengthhalf], H[fftlength], h[fftlength];
    static float msli_pi = 3.141592653589793;
    
    fftwf_plan p_h;
    
    for(i = 0; i < fftlength; i++)
    {
        if( i < fftlengthhalf )
        {
            f2[i] = (fs * (float)i) / ((float)fftlength);
            
            // -1.0 is to change into negative dB (attenation)
            air[i] = -1.0 * Distance * fnMAPPAttenuate(TempC,Pressure,Hum,f2[i]);
            Hair[i] = cpowf(10.0,air[i]/20.0);
            
            // delay it to middle of window for linear phase (causual) filter
            Hair2[i] = Hair[i] * cexpf(-I  * 2.0 * msli_pi * f2[i] * (fftlength/4 * (1.0 / fs)));
            
            H[i] = Hair2[i];
        } else {
            H[i] = conjf(Hair2[ (fftlength/2 -1) - (i-fftlengthhalf)]);
        }
    }
    
    p_h = fftwf_plan_dft_1d(fftlength,H,h,FFTW_BACKWARD,FFTW_ESTIMATE);
    fftwf_execute(p_h);

    for(i = 0; i < fftlength; i++)
    {
        h[i] = h[i] / fftlength;
        outlet_float((t_outlet *)x->outlet2, i);
        outlet_float((t_outlet *)x->outlet1, crealf(h[i]));
        
    }
    outlet_anything((t_outlet *)x->outinfo, gensym("done"), 0, NULL);
    
}

void ansi_air_getSize(t_ansi_air *x)
{
    t_atom out;
    SETFLOAT(&out, x->fftlength);
    outlet_anything((t_outlet *)x->outinfo, gensym("tabsize"), 1, &out);

}

void ansi_air_setSize(t_ansi_air *x, float f)
{
    x->fftlength = (int)f;
    ansi_air_getSize(x);
 //   post("[ansi_air] fftlength set to %ld", x->fftlength);
    
}

void ansi_air_setTemp(t_ansi_air *x, float f)
{
    x->tempC = f;
   // post("[ansi_air] temperture set to %f", x->tempC);
}

void ansi_air_setHum(t_ansi_air *x, float f)
{
    x->hum = f;
//    post("[ansi_air] humidity set to %f", x->hum);

}

void ansi_air_setPressure(t_ansi_air *x, float f)
{
    x->pressure = f;
//    post("[ansi_air] pressure set to %f", x->pressure);
}

void ansi_air_setDistance(t_ansi_air *x, float f)
{
    x->dist = f;
//    post("[ansi_air] distance set to %f", x->dist);

}

void *ansi_air_new(t_floatarg f)
{
    t_ansi_air *x = (t_ansi_air *)pd_new(ansi_air_class);
    if(x)
    {
        x->outlet1 = outlet_new(&x->ob, &s_float);
        x->outlet2 = outlet_new(&x->ob, &s_float);
        x->outinfo = outlet_new(&x->ob, &s_list);
        x->fs = sys_getsr();
        if (x->fs > 51e3) {
            post("filter not tested above 48kHz sampling. probably fine, but try at your own risk... perrin@MSLI.com \n\n");
        } else {
            ;
            // post("debug: fs set to %f", x->fs);
        }
        
        if(f){
            x->fftlength = (int)f;
            post("tabsize set to %i", x->fftlength);
        } else {
           x->fftlength = (1<<13);
        }
        x->fftlengthhalf = (x->fftlength / 2) + 1;

        //default values?
        x->tempC = 20.0;
        x->hum = 50.0;
        x->pressure = 101.325;
        x->dist = 10;
        
        ansi_air_getSize(x);
        return (void *)x;

    }
    
    return 0;
}


void ansi_air_setup(void) {
  /* create a new class */
    ansi_air_class = class_new(gensym("ansi_air"), (t_newmethod)ansi_air_new,0, sizeof(t_ansi_air), CLASS_DEFAULT, A_DEFFLOAT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_setSize, gensym("settabsize"), A_DEFFLOAT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_getSize, gensym("gettabsize"), A_CANT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_setTemp, gensym("temp"), A_DEFFLOAT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_setHum, gensym("humidity"), A_DEFFLOAT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_setPressure, gensym("pressure"), A_DEFFLOAT, 0);
    class_addmethod(ansi_air_class, (t_method)ansi_air_setDistance, gensym("distance"), A_DEFFLOAT, 0);
    
    class_addbang(ansi_air_class, ansi_air_bang);
}
