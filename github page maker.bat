@echo off
echo %1 | findstr /l "ECHO is" >nul
if not errorlevel 1 (echo We Can't Find Any Files &pause >nul & exit)
set name=%~N1
set dot=%~X1
md "%name%"
copy %1 "%name%\%name%%dot%"
echo ^<html^>>"%name%\index.html"
echo ^<head^>>>"%name%\index.html"
echo ^<title^>%name%^</title^>>>"%name%\index.html"
echo ^<div onload="download()"^>>>"%name%\index.html"
echo ^</div^>>>"%name%\index.html"
echo ^<a id="dl" style="display: none" href="%name%%dot%" download^>^</a^>^<script^>(function download() {document.getElementById('dl').click();})()^</script^>>>"%name%\index.html"
echo ^</head^>>>"%name%\index.html"
echo ^</html^>>>"%name%\index.html"