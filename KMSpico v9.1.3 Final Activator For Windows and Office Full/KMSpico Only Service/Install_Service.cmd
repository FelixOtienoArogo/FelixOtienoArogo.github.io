@echo off
pushd "%~dp0"
REM Check Windows Version
ver | findstr /i "6\.3\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Win81
goto :end
:ver_Win81
xcopy /yeh driver %windir%\System32\driver\
:end  
set dr=%windir%\System32\
xcopy /yh Service_KMS.exe %windir%\System32\Service_KMS.exe
set name="Service KMSELDI"
sc create %name% binPath= "%dr%Service_KMS.exe" type= own error= normal start= auto DisplayName= %name%
sc start %name%
popd
exit
