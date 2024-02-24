#!/bin/bash

# Convert the current path to Windows format if running under WSL
if grep -q Microsoft /proc/version; then
  # We are under WSL, convert the path
  mypath=$(wslpath -w "$(pwd)")
else
  # Not under WSL, use the current path as is
  mypath=$(pwd)
fi

# Encode the path to a hex format similar to hexdump
p=$(echo -n $mypath | xxd -p | tr -d '\n')

# Construct the folder-uri argument
folderUri="vscode-remote://dev-container+${p}/workspaces/$(basename "$mypath")"

# Open VSCode with the specified folder URI
code --folder-uri "$folderUri"
