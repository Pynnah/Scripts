#!/bin/sh

# NOTE: This script is not mine. I have used it for longer than I care to remember, though, so I do not know who the original author is. If you recognize it, please inform me so that I can credit the person who created the script, as it has proven quite handy.

case "$1" in
    --popup)
        notify-send "Memory (%)" "$(ps axch -o cmd:10,pmem k -pmem | head | awk '$0=$0"%"' )"
        ;;
    *)
        echo "$(free -h --si | awk '/^Mem:/ {print $3 "/" $2}')"
        ;;
esac

