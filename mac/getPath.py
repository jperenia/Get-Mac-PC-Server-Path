import sys
import os
import subprocess
import re


path = sys.argv[1]

df = subprocess.Popen(["df", path], stdout = subprocess.PIPE)

outputLine = df.stdout.readlines()[1]
uncPath = outputLine.split()[0]
serverAddress = uncPath.split("@")[1]

fileSystem = ""

mount = subprocess.Popen(["mount"], stdout = subprocess.PIPE)
outputLine = mount.stdout.readlines()

for i in outputLine:
    if serverAddress in i:
        if "smbfs" in i:
            fileSystem = "smb"
            break
        elif "afpfs" in i:
            fileSystem = "afp"
            break

formattedAddress = fileSystem + "://" + serverAddress + '/' + path.split("/", 3)[3]

print formattedAddress