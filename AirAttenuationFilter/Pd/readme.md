TODO: Make a **Pd external object** that can filter audio streams based on the 
**high frequency attenuation** caused by differing temperature, pressure, relative humidity, and distance.

The C code Based on the ANSI Standard:
https://github.com/perrinmeyer/polartide/blob/master/documentation/ANSI_S1_26_1995.pdf
and it has been verified to produce the same frequency dependent attenuation coefficients as the tables in the standard. 

**(1)** Currently, The C source code in AirAttenuationFilter creates a command line executable that takes temperature,pressure,relative humidity, and distance and  outputs a FIR filter (linear phase, 2^13 length). 

We need this in Pd External Form.  This should be somewhat trivial to someone skilled in Pd, since the C code already exists.

**(2)** Once the FIR coefficients are created, we need to find a Pd FIR routine, my initial thought was to use http://musicgrad.ucsd.edu/~cbaker/pd-spectral-toolkit/#partconv~ but i am open to any suggestions.

perrin

p e r r i n m e y e r (a t) y a h o o (d o t) c o m 





