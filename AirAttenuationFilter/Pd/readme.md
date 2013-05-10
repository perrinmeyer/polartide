**TODO: Make a Pd external object that can filter audio streams based on the 
high frequency attentuation caused by differing temperature, pressure, relative humidity, and distance. **

Based on the ANSI Standard:
https://github.com/perrinmeyer/polartide/blob/master/documentation/ANSI_S1_26_1995.pdf

**(1)** Currently, The C source code creates a command line exacutable that takes temperature,pressure,relative humidity, and distance and creates a FIR filter (linear phase, 2^13 length). 

We need this in Pd External Form.  This should be somewhat trivial to someone skilled in Pd, since
the C code already exists.

**(2)** Once the FIR coefficients are created, we need to find a Pd FIR routine, my inital thought was to use http://musicgrad.ucsd.edu/~cbaker/pd-spectral-toolkit/#partconv~ but i am open to any suggestions.

perrin
p e r r i n m e y e r _a_t_ y a h o o _d_o_t_ c o m 





