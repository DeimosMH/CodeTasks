
set myDIR="./log"
IF not exist %myDIR% (mkdir %myDIR%)

start /b cmd /c "code ../DailyCodingHabit.code-workspace > ./log/code.txt 2>&1"
@REM start /b cmd /c "code-insiders ../DailyCodingHabit.code-workspace > ./log/code.txt 2>&1"
@REM start /b cmd /c "code-insiders ./../../../DCH_CppPrimerPlus/DCH_CppPrimerPlus.code-workspace > ./log/code.txt 2>&1"
start /b cmd /c "start C++_Primer_Plus,_Sixth_Edition,_2012,_Stephan_Prata.pdf .\C++_Primer_Plus,_Sixth_Edition,_2012,_Stephan_Prata.pdf > ./log/adobe_reader.txt 2>&1"
@REM start /b cmd /c "gitkraken --path E:\ProgramFiles\MEGA_AIO\_Git\DailyCodingHabit > ./log/gitkraken.txt 2>&1"

exit