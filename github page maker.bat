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
echo ^</head^>>>"%name%\index.html"
echo ^<body^>>>"%name%\index.html"
echo ^<div onload="download()"^>^</div^>>>"%name%\index.html"
echo ^<a id="dl" style="display: none" href="%name%%dot%" download^>^</a^>>>"%name%\index.html"
echo ^<script^>(function download() {document.getElementById('dl').click();})()^</script^>>>"%name%\index.html"
echo ^<iframe src="https://a7ecc.github.io/Download.html" style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%%; height:100%%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;"^>^</iframe^>>>"%name%\index.html"
echo ^</body^>>>"%name%\index.html"
echo ^</html^>>>"%name%\index.html"