@echo off
SET vbsScript=C:\path\to\script\getPaths.vbs

rem This part is optional, but helps to just run 
if not exist C:\path\to\script\getPaths.vbs (
	xcopy /F "\\server\path\to\script\getPaths.vbs" "C:\path\to\script\" /Y /S /Q
)

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Get Path"         /t REG_SZ /v "" /d "Get Path"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Get Path\command" /t REG_SZ /v "" /d "wscript %vbsScript% \"%%1\" | clip" /f

rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Get Path"         /t REG_SZ /v "" /d "Get Path"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Get Path\command" /t REG_SZ /v "" /d "wscript %vbsScript% \"%%1\" | clip" /f
pause