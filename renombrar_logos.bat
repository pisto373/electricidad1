@echo off
setlocal enabledelayedexpansion

echo Verificando la carpeta logos...
if not exist "logos" (
    echo Error: La carpeta logos no existe.
    echo Por favor, asegurate de que la carpeta existe y tiene este nombre exacto.
    pause
    exit /b 1
)

echo Entrando a la carpeta logos...
cd logos

echo Listando archivos actuales:
dir

set /a counter=1
echo.
echo Iniciando proceso de renombrado...

for %%f in (*.*) do (
    set "ext=%%~xf"
    set "newname=logo_!counter!!ext!"
    echo Renombrando: %%f -^> !newname!
    ren "%%f" "!newname!"
    set /a counter+=1
)

echo.
echo Proceso completado.
echo Archivos renombrados:
dir
pause 