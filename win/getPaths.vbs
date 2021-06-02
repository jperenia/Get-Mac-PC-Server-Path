Dim Arg, argvar, tvar, revar1, revar2, revar3, finvar
Dim wsh : Set wsh = WScript.CreateObject("WScript.Shell")
Set Arg = WScript.Arguments

'Input Filepath
argvar = Arg(0)

tvar = CreateObject("scripting.filesystemobject").GetDrive("set drive letter here").ShareName

revar3 = argvar

wsh.Run "cmd.exe /c (echo " & revar3 & ")| clip", 0, True

'Clear the objects at the end of your script.
set Arg = Nothing