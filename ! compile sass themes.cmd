@echo off

%~d0
CD "%~dp0"

@echo Downloading Chocolatey
rem @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://bit.ly/psChocInstall'))"
rem SET PATH=%PATH%;%systemdrive%\chocolatey\bin

@echo Downloading Ruby
rem CALL cinst ruby

@echo Downloading Sass
rem CALL gem install sass

@echo Starting Sass
sass --watch css/theme/source/:css/theme --style expanded

pause