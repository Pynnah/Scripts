#!/bin/bash

POS="$(~/Scripts/sh/cursor.sh)" # cursor.sh can be found in the "shell" section of my "Scripts" repository.

ueberzug layer --parser bash 0< <(
    declare -Ap add_command=([action]="add" [identifier]="example0" [x]="0" [y]="$POS" [path]="$1")
    read
)

