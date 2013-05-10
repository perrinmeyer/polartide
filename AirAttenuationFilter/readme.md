
**This code creates a high-frequency attenentuation filter based on weather data and distance.**

The filter is based on the very good ANSI standard. 

https://github.com/perrinmeyer/polartide/blob/master/documentation/ANSI_S1_26_1995.pdf

see, for example, this plot of the frequency response filters of four different locations:
https://github.com/perrinmeyer/polartide/blob/master/bells/9may2013/bellsAirAtten_8may2013_b.pdf

The C code currently creates a 2^3 linear phase impulse response which I then pipe to sox to
filter wave files

./psmAirAtten  TempC(20)  HumRel(50)  Pressure(101.325 sea) DistanceMeters(50) fs(44.1 | 48) 

output is h[] == impulse response lengh 2^13

  Example using sox:  ./psmAirAtten 20 50 101.325 50 48 |sox bells1.wav bells1_airatten.wav fir - 

note the "fir -" the dash is important (read h[] from standard input 

The goal is to create a **P**d and **Max/MSP** external from this code. 

perrin

