AGEPRO Calculation Engine Project
Lead:  Jon Brodziak, NOAA Fisheries/PIFSC
Email: Jon.Brodziak@NOAA.GOV
/***********************************************************/
AGEPRO files
C language code: agepro.c ranx.c boxmuller.c util.c
C header: agepro.h ranx.h util.h
/***********************************************************/
Steps to compile AGEPRO executable using C language compiler:
(1) Compile object files for filenames ranx.c, boxmuller.c, and util.c using syntax
    cc -c filename.c
(2) Compile agepro.c, link object files and name executable using syntax
    cc -o AGEPRO.exe ranx.o boxmuller.o util.o agepro.c
/***********************************************************/
