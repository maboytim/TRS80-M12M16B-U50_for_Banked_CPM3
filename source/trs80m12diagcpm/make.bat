@echo off
echo Building the TRS-80 Diagnostic ROM...
echo Deleting intermediate files...
del *.lst
echo Assembling...
rem ..\zmac --zmac -m --od . --oo cim,bds,lst,hex trs80m13diag.asm

zmac --zmac -m --od . --oo cmd,lst trs80m12diagcpm.asm
copy trs80m12diagcpm.cmd diagcpm.cmd
echo Done!