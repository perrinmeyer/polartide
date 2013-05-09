all: psmAirAtten

clean:  
	rm psmAirAtten

psmAirAtten : psmAirAttenFilter.c 
	$(CC) -o psmAirAtten -std=c99 -O2 -Wall -Wno-comment psmAirAttenFilter.c MAPPAttenuate.c deps/fftw_local/lib/libfftw3f.a -lm -lc 

