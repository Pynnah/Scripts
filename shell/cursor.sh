#!/bin/sh

exec < /dev/tty
oldstty=$(stty -g)
stty raw -echo min 0
tput u7 > /dev/tty
sleep 0.01
IFS=';'; read -r row col
stty $oldstty

row=$(expr $(expr substr $row 3 99) - 1)

printf $row # This ONLY prints the current row in your terminal emulator or tty.
