@echo off
setlocal enabledelayedexpansion

:inicio
set /p pdfname="Introduce el nombre del archivo PDF (sin la extension .pdf): "
set pdffile=%pdfname%.pdf

:: Obteniendo el número de páginas usando pdftk
for /f "tokens=2" %%a in ('pdftk %pdffile% dump_data ^| find "NumberOfPages"') do set numpages=%%a
echo El documento tiene %numpages% paginas.

:selectpages
set /p rangepages="Introduce el rango de paginas a extraer (ej. 1-50): "
set outputfile=%pdfname%_%rangepages%.pdf

:: Reemplazar los dos puntos en el nombre del archivo resultante, si existen
set outputfile=!outputfile::=!

pdftk %pdffile% cat %rangepages% output !outputfile!

:morepages
set /p more="Quieres extraer otro rango de paginas? (introduce 's' para si, 'n' para no): "

if /i "!more!"=="s" goto selectpages

echo Proceso completado.
pause
