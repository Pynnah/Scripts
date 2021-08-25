#!/bin/sh

# NOTE: My polybar is named "mybar". If your bar has a different name, substitute the name "mybar" for the name of your polybar.
if pgrep polybar > /dev/null
then
	kill polybar && polybar mybar
else
	polybar mybar
fi
