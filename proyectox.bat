@echo off
setlocal enabledelayedexpansion

:menu
cls
echo ---------------
echo Bienvenido
echo ---------------
echo 1. Registro
echo 2. Inicio de sesión
echo 3. Salir
set /p option=Seleccione una opción: 

if "%option%" equ "1" (
    call :register
) else if "%option%" equ "2" (
    call :login
) else if "%option%" equ "3" (
    exit /b
) else (
    echo Opción no válida. Inténtelo de nuevo.
    pause
    goto :menu
)

:register
cls
echo ---------------
echo Registro
echo ---------------
set /p username=Ingrese su nombre de usuario: 
set /p password=Ingrese su contraseña: 
set /p confirmpassword=Confirme su contraseña: 

if "%password%" equ "%confirmpassword%" (
    echo Usuario registrado exitosamente.
    echo %username%:%password%>>usuario.txt
    pause
) else (
    echo Las contraseñas no coinciden. Inténtelo de nuevo.
    pause
)
goto :menu

:login
cls
echo ---------------
echo Inicio de sesión
echo ---------------
set /p username=Ingrese su nombre de usuario: 
set /p password=Ingrese su contraseña: 


