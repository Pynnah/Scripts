# Scripts
Some short python and shell scripts, primarily for use with dmenu.

NOTE: These were created only with personal use in mind! I do not intend for them to be clean, easy to read, performant, or reliable on other machines. Most were thrown together in one go, with little thought put in. I am making these public so that people can see how I configure and run my system on a day-to-day basis, not as a display of my Python or shell scripting abilities.


## Dmenu scripts
These scripts are specifically made for use with dmenu, though they could be easily modified to make use of a similar menu application such as rofi. Some are standalone, and others require scripts that are elsewhere in this repository. All of these scripts are in plain POSIX shell.

### dmenu_diagnostics
This script allows the user to select from one of several pieces of system information, and then receive a notification containing the requested statistic. There are 5 things in the script as I've written it: GPU usage, GPU temperature, disk usage, RAM usage, CPU usage, and Backlight. It uses `notify-send` to create notifications, so it should be notification server-neutral. I have tested it using Dunst, twmn, and Wired.

### dmenu_drun
This script acts as a typical application launcher; it displays a list of .desktop applications and launches to selected one using `gtk-launch`. It does not pull applications from anywhere other than `/usr/share/applications`, as that is the only location I use.

### dmenu_scrot
This script acts as a screenshot menu, giving a choice between 3 options: Taking a screenshot of the full screen, the currently focused window, or a region selected by draggin the cursor. It takes screenshots using `scrot`, and moves them into `~/Captures`.

### dmenu_wallpaper
This script allows the user to dynamically change their wallpaper using `xwallpaper`. It searches for files in `~/Backgrounds`, and creates a copy of the selection which is passed into `xwallpaper`. This allows the last selection to be persistent across boots, which means you needn't select the same wallpaper every time you boot into your environment.


## Python scripts
These are a collection of various scripts written in Python. Some are standalone items made for fun, while others may be made for integration into other projects or programs.

### gpu-usage.py
This script integrates into `dmenu_diagnostics`, and outputs a percentage of the GPU memory being used for an NVIDIA graphics card.

### printcsv.py
This script is a simple program which formats any CSV files passed as arguments using the versatile `pandas` library and prints them to STDOUT. It should be highly portable, though there have been no tests on other operating systems.


## Shell scripts
These are a collection of various scripts written in POSIX shell. Most of them are plain POSIX, but some may include bashisms which do not function properly within other POSIX-compliant shells.

### bspwm-launch.sh
This is my simple script used to launch Polybar when I open or reload BSPWM. The only thing that should need to be changed for personal use is the name of the status bar.

### cursor.sh
This is a strictly-POSIX implementation of a bash script used to output the row on which the cursor lies in the current terminal window or TTY. The script initially also gave the column, but I removed that functionality for my use case as it was extraneous information.

### memory.sh
This script outputs the current used and total system RAM, in a human readable format (Used/Total, with the corresponding units). **It is not my original script, but I have had many uses for it. Please inform me if you know the original author.**

### ueberzug.sh
This is a small bash script which makes use of Überzug to display a given image file in a terminal window. It depends on `cursor.sh`, so that the image can display just below wherever the current line is rather than a fixed place in the terminal window. It has worked proerly for me in the Alacritty, Kitty, and Xterm terminal emulators. **This script contains bashisms, and will not function correctly if run in a stricter POSIX shell such as dash.**
