# Tectonic template for Visual Studio Code with a Dev Container

This is an opinionated template to give you a kick start into writing a LaTeX document with Tectonic and Visual Studio Code. It includes batteries:

- Preconfigured KOMAScript `scrreprt` document class
- Github Actions with [setup-tectonic](https://github.com/WtfJoke/setup-tectonic) action

## Getting started

 1. Clone this repository
 2. Open it in Visual Studio Code while having [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) installed and Docker running
 3. Click on left corner <br/> ![open remote window](doc/OpenRemoteWindow.PNG) <br/> "Open remote window"
 4. Open Folder in Container <br/> ![open folder in container](doc/OpenFolder.PNG)</br>wait until the container is running
 5. Go to the terminal <br/> ![terminal](doc/terminal.PNG)

7. Type Tectonic command to build <br/> ![build](doc/build.PNG)
```bash
tectonic -X build
```
8. See result in build/default folder <br/> ![result](doc/result.PNG)
9. Click on left corner <br/> ![open remote window](doc/OpenRemoteWindow.PNG)<br/> "Open remote window"

10. Close remote connection <br/> ![close remote connection](doc/close.PNG)
