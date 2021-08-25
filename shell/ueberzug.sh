#!/bin/bash

# NOTE: This script does not function in a plain POSIX shell. You must have `bash` if you want this script to run correctly.

POS="$(~/Scripts/sh/cursor.sh)" # cursor.sh can be found in the "shell" section of my "Scripts" repository.

ueberzug layer --parser bash 0< <(
    declare -Ap add_command=([action]="add" [identifier]="example0" [x]="0" [y]="$POS" [path]="$1")
    read
)

