# Get-Mac-PC-Server-Path
Code for creating a right click context menu item in both Mac and PC for retrieving a formatted server link.

The main purpose of this project is to create a way to retrieve server links for files/folders via a context menu item.  Typically, what is returned is either an smb or afp link on macOS or the full drive letter path on Windows.

Before you begin to the follow the instructiosn below, please modify the Python, vbscript, and batch script as needed to work with your environment.

## macOS Instructions
1. Open Automator and create a Service or Quick Action project.
2. Set the workflow to receive files or folders in Finder.
3. Add Run Shell Script to the workflow and change the Shell to /usr/bin/python.
4. Copy and paste the contents of the py file found in this repository into the newly added Action.
5. Save the project, then install.

## Windows Instructions
1. Create a folder anywhere on the machine and copy the vbscript found in this repository into this folder.
2. Add the context menu item by running the batch script.
