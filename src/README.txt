AGEPRO Calculation Engine Project
Lead:  Jon Brodziak, NOAA Fisheries/PIFSC
Email: Jon.Brodziak@NOAA.GOV
/******************************************************************************/
AGEPRO files
C code files: agepro.c ranx.c boxmuller.c util.c
C header files: agepro.h ranx.h util.h
/******************************************************************************/
Steps to compile AGEPRO executable using a C language compiler (cc):
(1) Compile object files for the files ranx.c, boxmuller.c, and util.c using
    cc -c filename.c
(2) Compile agepro.c, link object files and name the executable using syntax
    cc -o AGEPRO.exe ranx.o boxmuller.o util.o agepro.c
/******************************************************************************/
