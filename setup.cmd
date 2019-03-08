@echo off
echo setup: we need choco
choco --version
if errorlevel 0 (
  echo setup: choco already exists.
) else (
  echo setup: installing choco ...
  "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

echo
echo setup: we need python3
python3 --version
if errorlevel 0 (
  echo setup: python3 already exists
) else (
  echo setup: installing python3 ...
  choco install python3
)

echo
echo setup: we need middleware
echo to be implemented
