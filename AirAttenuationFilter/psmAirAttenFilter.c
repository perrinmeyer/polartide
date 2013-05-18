/*  Copyright (C) 2013 Meyer Sound Laboratories Inc., Berkeley, CA */
/*  Written by Perrin Meyer                                        */ 
/*  perrin@MSLI.com                                                */ 
/*
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
http://www.gnu.org/licenses/gpl-2.0.html
*/

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

float fnMAPPAttenuate( 
		      float ftemperature, 
		      float fpressurekPa,
		      float frnelhumidity, 
		      float ffrequency 
		       );


int main(int argc, char * argv[]) {


  if (argc != 6) {
    printf("\n");
    printf("./psmAirAtten  TempC(20)  HumRel(50)  Pressure(101.325 sea) DistanceMeters(50) fs(44.1 | 48) \n\n");
    printf("output is h[] == impulse response lengh 2^13\n");
    printf("\n");
    printf("  Example using sox:  ./psmAirAtten 20 50 101.325 50 48 |sox bells1.wav bells1_airatten.wav fir - \n");
    printf("\n");
    printf("note the fir - <- the dash is important (read h[] from standard input \n");
    printf("\n");



    exit(0);
  }


  float fs = (float)atof(argv[5]) * 1e3; // 44.1 is CD, 48 is pro.  96 probably might not work... 
  
  if (fs > 51e3) {
    printf("filter not tested above 48kHz sampling. probably fine, but try at your own risk... perrin@MSLI.com \n\n");
    exit(0);
  }

  //int fftlength = 8192; // 2^13  
  //int fftlength = 4096; // 2^12  
  int fftlength = 2048; // 2^11  
  int fftlengthhalf = (fftlength / 2) + 1; 

  float * n =  (float *)malloc(fftlength * sizeof(float));
  for (int i = 0 ; i < fftlength ; i++) n[i] = (float)i; 
  float * f = (float *)malloc(fftlength * sizeof(float));
  for (int i = 0; i < fftlength ; i++) f[i] = (fs * n[i])/((float)fftlength); 
  float * f2 = malloc( fftlengthhalf * sizeof(float));
  for (int i = 0; i < fftlengthhalf ; i++) f2[i] = f[i];

  float * air = malloc(fftlengthhalf * sizeof(float));

 // Air Attenuate Stuff
  float TempC;
  float Hum; // relative 
  float Pressure;
  float Distance; // meters 
  //TempC = 20.0;
  //Hum = 50.0;
  //Pressure = 101.325;
  //Distance = 100.0; 
  TempC = (float)atof(argv[1]);
  Hum = (float)atof(argv[2]);
  Pressure = (float)atof(argv[3]);
  Distance = (float)atof(argv[4]);
  // argv[5] is string for uniqeID of matlab output variables. 
	      

  // -1.0 is to change into negative dB (attenation)
  for (int i = 0; i < fftlengthhalf ; i++) air[i] = -1.0 * Distance * fnMAPPAttenuate(TempC,Pressure,Hum,f2[i]); 

  float _Complex * Hair2 = malloc(fftlengthhalf * sizeof(float _Complex));

  for (int i = 0 ; i < fftlengthhalf ; i++ ) Hair2[i] = cpowf(10.0,air[i]/20.0);
  static float msli_pi = 3.141592653589793;

  // delay it to middle of window for linear phase (causual) filter 
  for (int i = 0 ; i < fftlengthhalf ; i++ ) Hair2[i] = Hair2[i] * cexpf(-I  * 2.0 * msli_pi * f2[i] * (fftlength/4 * (1.0 / fs)));

  float _Complex * H = (float _Complex *)malloc(fftlength * sizeof(float _Complex));
  
  for (int i = 0 ; i < fftlengthhalf ; i++ ) H[i] = Hair2[i];

  for (int i = fftlengthhalf ; i < fftlength ; i++) H[i] = conjf(Hair2[ (fftlength/2 -1) - (i-fftlengthhalf)]);

  float _Complex * h = (float _Complex *)malloc(fftlength * sizeof(float _Complex));
  fftwf_plan p_h;
  p_h = fftwf_plan_dft_1d(fftlength,H,h,FFTW_BACKWARD,FFTW_ESTIMATE);
  fftwf_execute(p_h);
  for (int i = 0 ; i < fftlength ; i++) h[i] = h[i] / fftlength; // normalize like matlab 

  // print out impulse response
  for (int i = 0 ; i < fftlength ; i++) printf("%1.13e \n",crealf(h[i]));

  return 0; 
}
