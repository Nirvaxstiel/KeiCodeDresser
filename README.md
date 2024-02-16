# KeiCodeDresser: Visual Studio & VS-Code Theme & Configurations.

This repository contains a collection of extensions and my personal customized theme I've found useful or created to enhance my coding experience. It's organized by development environment, so you can easily find configurations relevant to your needs.

The base theme profile is `one-darker-pro`, but I dislike the use of reds for parameters and keywords.

# How to Use

Feel free to explore the repository and use any of the configurations for your development environment.
## Prerequisites
1. Nerd Fonts
   I use the following nerd font from [Oh-My-Posh](https://ohmyposh.dev/docs/installation/fonts)
   ```powershell
   # using omp
   oh-my-posh font install
   ```

   ```sh
   # using homebrew
   brew tap homebrew/cask-fonts # You only need to do this once!
   brew search nerd-font       # Search for font packages

   # EXAMPLE: Install the NF version of Fira Code
   brew install --cask font-fira-code-nerd-font
   ```
2. ([For Visual Studio section](#visual-studio-2022)) Extension Manager 2022 [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Loop8ack.ExtensionManager2022) | [Github](https://github.com/loop8ack/ExtensionPackTools)
   ![Extension manager](/images/vs2022extensionmanager.png)   

# Visual Studio (2022)
![Screenshot of Visual Studio Theme](/visual_studio/vs2022/vs2022.png)

### Setting up
1. Fetch the extensions from the [Visual Studio Folder](/visual_studio/vs2022/extensions.vsext)
2. Find `Extensions`\ `Import and Export Extensions`\ `Import Extensions` and import the `.vsext`
   ![How to import extensions](images/howtoimportextensions.png)
3. Close/Restart your Visual Studio to finish installing the extensions.
4. Fetch the font colours, settings used from the [Visual Studio Folder](/visual_studio/vs2022/Exported-2024-02-16.vssettings)
5. Find `Tools`\ `Import and Export Settings`
   ![How to import settings](/images/howtoimportsettings.png)
6. Follow the import wizard and don't forget to back up your current settings.
   ![Settings Wizard](images/importsettingswizard.png)

And, that's it!

### Why do some of my methods appear `RED` instead of what the screenshots show?

This is due to Roslynator. It overwrites some colours, including methods and such to Red. You can override this under the `Tools`\ `Environment`\ `Fonts and Colours`\ `Identifier`. You can either keep it as is, or revert it to `Automatic` for both the foreground and the background. That should fix it.

![Roslynator Identifier colour override](images/roslynatoridentifiercolouroverride.png)

# Visual Studio Code/Cursor

![Visual Studio Code/Cursor](vscode/vs-code.png)
The theme looks blue here because my desktop wallpaper is blue, and it is on a shuffle basis.

## Setting up

All you need to do is to import the [.code-profile](/vscode/Cursor-VSCode.code-profile). This works on both VSCode and Cursor.


![Alt text](images/howtoimportprofile.png)

## So which is it, Kei or Nirvaxstiel
Both