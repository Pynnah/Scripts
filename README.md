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
