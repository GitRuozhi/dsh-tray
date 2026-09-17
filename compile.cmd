@echo off
setlocal
set "CSC=%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
if not exist "%CSC%" set "CSC=%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\csc.exe"
if not exist "%CSC%" (
  echo csc.exe not found. Install .NET Framework 4.x Developer Pack or use Developer Command Prompt.
  exit /b 1
)
"%CSC%" /nologo /utf8output /target:winexe /optimize /win32icon:whale.ico /r:System.Management.dll /r:System.Windows.Forms.dll /r:System.Drawing.dll /out:dsh-tray.exe dsh-tray.cs
if errorlevel 1 exit /b 1
echo built dsh-tray.exe
