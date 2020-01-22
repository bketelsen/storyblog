---
title: Win The Dev Box 
layout: post
date: "2020-01-22"
url: "/win-the-dev-box"
image: /images/h3GAGi5tXMU.jpg
thumbnail: /images/h3GAGi5tXMU-thumb.jpg
credit: https://unsplash.com/photos/h3GAGi5tXMU
description: "A Series on Using Windows for Open Source Development"
tags:
- "windows"
- "linux"
- "open source"
classes:
- feature-hyphenate
- feature-justify
- feature-highlight
categories:
- "Linux"
- "Windows"
- "Open Source"
---

[Work in Progress]
## A Guide for Open Source Developers Moving To Windows

If, or some `$reason` or combination of `$reasons`, you've decided that the time is right to try Windows as a dev environment, this article series is for you.  In this first article we'll start with the installation and configuration of the Windows Subsystem for Linux, and get you to the point where you can clone and compile/run your OSS projects.

The series will continue with other articles and advice on using Windows for your daily driver when you're used to macOS or Linux desktops.

### Assumptions

_This guide is for you if you're traditionally a macOS or Linux desktop user and you're looking for information on how to use a Windows 10 device with Windows Subsystem for Linux as your primary development environment._

This also includes an implicit assumption that you're familiar with `bash` or `zsh` environments, and have basic skills on the command line.


## Installation

*  Rename your PC

  `Desktop-R4NDH3X` isn't my speed.  When it asks you to reboot, you can choose the "later" option, we have plenty of rebooting coming up.

![Rename PC](/images/wsl/renamepc.jpg)

* Move to Windows Insider to get beta builds.  

Open the Start Menu, then choose Settings, then Update & Security

![Insider](/images/wsl/insider.png)

Add or link an account, and set up Windows Insider preferences to be either "Slow Ring" or "Fast Ring" to enable WSL2.  Enabling Windows Insider will require a reboot.

* Windows Update

Now go into Windows Update and get the updates.   One of them will be the version that enables WSL2.  When all your updates are installed you can proceed.

* Install the new Microsoft Edge (optional, but awesome)

Head to the [edge download site](https://www.microsoft.com/en-us/edge) and install the new version of Microsoft Edge.  It's based on Chromium and a lot nicer than the older Edge.  Be sure to checkout the multiple profile support.  I have profiles for different contexts (work, banking, personal) and really enjoy the separation of cookies.

* Install the features to enable [WSL2](https://docs.microsoft.com/en-us/windows/wsl/wsl2-install)

Open Powershell as an Administrator:

![Elevated Access Powershell](/images/wsl/wsl-powershell-admin.png)

run these two commands:

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
		
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

This enables the Virtual Machine Platform, which gives us the hypervisor from HyperV without installing HyperV. 

* Microsoft Store

Open the Microsoft Store app and install any updates that are pending.  If you want to use X11 applications from WSL you'll need an X server too.  I use [X410](https://token2shell.com/x410/) and heartily endorse the purchase if you can catch it ON SALE, like it is now for $9.99 US.  Don't pay full price though, there are others that are available if X410 isn't on sale.

Install [Ubuntu](https://www.microsoft.com/store/productId/9NBLGGH4MSV6) from the Microsoft Store.  Don't pick a versioned app, just choose the `Ubuntu` app without a version.  It follows LTS.

![Ubuntu](/images/wsl/microsoft-store-ubuntu.png)

Install [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701).  The new Windows Terminal is a solid terminal emulator, and you'll feel at home here if you're used to iTerm2 or Gnome Terminal.  I didn't mark this as optional, because you're used to using a real terminal, and Windows Terminal is the only thing that will satisfy you.  Trust me on this.

![Windows Terminal](/images/wsl/windows-terminal.png)

* Open the `Ubuntu` app from your Start menu

![ubuntu](/images/wsl/wsl-first-run.png)

After a moment, it will ask for a username and password.  These are your credentials inside the Linux world.  You can choose any *nix friendly username.

![success](/images/wsl/wsl-success.png)

* Download and install Visual Studio Code

Go to [the VS Code website](https://code.visualstudio.com/Download) and download it.  Install it when the download is complete.

* Pin VS Code and Windows Terminal to your start menu (and maybe your taskbar)

![pin](/images/wsl/pintostart.png)

* Install the Remote WSL Extension in Visual Studio Code

![remote](/images/wsl/vscode-remote-extensionpack.png)

* Configure Windows Terminal

Open Windows Terminal, then click the "down arrow" next to the new tab button.  Choose "Settings".

Find the stanza with your "Ubuntu" installation and copy the `guid`.  Paste it into the value for "defaultProfile" at the top of the settings file.

![default](/images/wsl/terminal-default-profile.png)

While you're in there, download [Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases) and install it (by double-clicking on the ttf file).  Edit your "Ubuntu" profile in the Windows Terminal settings to use the new font:

```
	{
            "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
            "hidden": false,
            "name": "Ubuntu",
            "source": "Windows.Terminal.Wsl",
            "startingDirectory": "//wsl$/Ubuntu/home/YOURUSER",
            "fontFace": "Cascadia Code PL",
            "fontSize": 12,
        },
```

While you're there, change your starting directory too, by modifying the "startingDirectory" value.  Change `YOURUSER` to the username you chose when you installed WSL.  Mine was `bjk`.



## References and Further Information

