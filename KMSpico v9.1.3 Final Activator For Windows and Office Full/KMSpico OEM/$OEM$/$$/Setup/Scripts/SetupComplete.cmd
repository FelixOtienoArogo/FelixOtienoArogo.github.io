@ECHO OFF
pushd "%~dp0"
start /wait KMSpico_setup.exe /verysilent /noicons
regedit /s RunOnce.reg
timeout /t 120
shutdown -r -t 0
popd
exit
