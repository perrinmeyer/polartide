/* Air Attenuation. Perrin Meyer. perrin@MSLI.com 26 Oct 2001 */

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

//Room temperature in Kelvin (20 deg C)
#define gkMslRoomTempK  293.15

//triple point of water in Kelvin (YES it's .16 not .15)
#define gkMslTTripleH2O 273.16

//International standard atmosphere at mean sea level, in kiloPascals
#define gkMslPref      101.325


float fnMAPPAttenuate( 
		      float ftemperature, 
		      float fpressurekPa,
		      float frnelhumidity, 
		      float ffrequency 
		      );

float relativetomolar( float frelhumidity,
                        float ftemperature,
                        float fpressurekPa );

float FRO( float fpressurekPa,
            float fmolarhumidity );

float FRN( float ftemperature,
            float fpressurekPa,
            float fmolarhumidity );

float alpha( float ffrequency,
              float fpressurekPa,
              float ftemperature, 
              float frO,
              float frN );



float mslCelsius2Kelvin(float fCelsius)
{
	return fCelsius + (float)273.15;
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
#if 0
  int main(int argc, char * argv[]) {

  float temp;
  float pressure;
  float humidity;
  float freq;
  float result;

  /******************************************************/

  if (argc < 2) {
    printf("Air Attenuation   temp  press humidity freq \n");
    return 0;
  }

  temp = (float)atof(argv[1]);
  pressure = (float)atof(argv[2]);
  humidity = (float)atof(argv[3]);
  freq = (float)atof(argv[4]);
  result = fnMAPPAttenuate(temp,pressure,humidity,freq);

  printf(" att in db per meter = %1.5e\n", result);
  printf(" att in db per kilometer for %g Hz = %g \n",freq,result * 1000.0);

  return 0;
}
#endif 



