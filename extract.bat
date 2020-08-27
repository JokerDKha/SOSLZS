@ECHO OFF
CLS
ECHO 1.Extract disc file
ECHO 2.Extract .lzs file

CHOICE /C 12 /M "Select extract method:"

IF ERRORLEVEL 2 GOTO ExtractLZSFile
IF ERRORLEVEL 1 GOTO ExtractDiscFile

:ExtractDiscFile
ECHO Extract disc file
quickbms.exe "%cd%\sosfomt_disc_zip.bms" "%cd%\disc-here" "%cd%\File-extract\disc-extract"
GOTO End

:ExtractLZSFile
ECHO Extract .lzs file
quickbms.exe "%cd%\sosfomt_lzs.bms" "%cd%\lzs-here" "%cd%\output"
quickbms.exe "%cd%\sosfomt_dcmp.bms" "%cd%\output" "%cd%\File-extract\lzs-extract"
GOTO End

:End