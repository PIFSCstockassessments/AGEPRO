AGEPRO Project
Lead:  Jon Brodziak, NOAA Fisheries/PIFSC
Email: Jon.Brodziak@NOAA.GOV
/******************************************************************************/
AGEPRO source code files
C code files:     agepro.c (main C code) 
                  ranx.c (generate random U(0,1) variate)
                  boxmuller.c (generate pairs of random N(0,1) variates)
                  util.c (various utility functions)
C header files:     agepro.h (header for agepro.c)
                    ranx.h (header for ranx.c)
                    util.h (header for util.c)
/******************************************************************************/
Steps to compile AGEPRO executable using a C language compiler (e.g., gcc)
(1) Compile object files for the files ranx.c, boxmuller.c, and util.c
    Use syntax:
    gcc -c filename.c
(2) Compile agepro.c, link object files, and name the executable "agepro.exe"
    Use syntax:
    gcc -o Agepro.exe ranx.o boxmuller.o util.o agepro.c
/******************************************************************************/
