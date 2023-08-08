# L3-Dumping

This repo contains some batch scripts which will help you setup your virtual device created with Android Studio to dump the L3 device_client_id_blob and device_private_key. If you don't know how to create a virtual device with Android Studio you can also refer to this guide https://forum.videohelp.com/threads/408031-Dumping-Your-own-L3-CDM-with-Android-Studio

# Prerequisites
You will need to download Android Studio from https://developer.android.com/studio and complete the installation process.
Once you have completed the installation process you need to download frida-server-16.x.x-android-x86.xz from https://github.com/frida/frida/releases (you may need to Click show all assets as there are a lot of different builds). Once you have downloaded the latest version of frida-server you need to use a file archiver like 7zip or winrar to extract the .xz file which should give you the required file. This file then needs to be placed into `C:/Users/YOUR USERNAME/AppData/Local/Android/Sdk/platform-tools`.
Finally head to https://github.com/wvdumper/dumper and download/clone the repo, it should give you a folder called dumper-main.

# Setup
Download the 3 .bat files `frida.bat`, `dumpkeys.bat` and `run.bat`, make sure they are in the same folder as each other. 

Open `frida.bat` in a text editor, replace `YOUR PATH TO adb.exe HERE` with `C:\Users\YOUR USERNAME\AppData\Local\Android\Sdk\platform-tools\adb.exe`, replace `YOUR FRIDA SERVER VERSION HERE` with `frida-server-16.x.x-android-x86` (make sure this is set to the version you downloaded) and replace `YOUR platform-tools PATH HERE` with `C:\Users\YOUR USERNAME\AppData\Local\Android\Sdk\platform-tools`.
Open `dumpkeys.bat` in a text editor, replace `YOUR PATH HERE` with your path to the dumper-main folder.
 
Double click `run.bat` after modifying + saving `frida.bat` and `dumpkeys.bat` whilst your virtual device is running, you should see 2 command prompt windows appear, wait a few seconds and on your virtual device open Google Chrome and go to https://bitmovin.com/demos/drm, if a popup appears click `Allow` and continue to play the video for a few seconds. 
If you've done everything correctly then you should be able to head to your dumper-main folder and a folder called key_dumps should have been created, within that folder should be some more folders and eventually you should be able to find your `device_client_id_blob` and `device_private_key` files. 
