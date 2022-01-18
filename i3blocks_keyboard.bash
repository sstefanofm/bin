#!/bin/bash

# i3blocks module for changing the keyboard layout

query_keyboard_layout() {
    setxkbmap -query | grep layout | awk 'NF{print $NF}'
}

switch_keyboard_layout() {
    [[ $(query_keyboard_layout) = "us" ]] && setxkbmap es || setxkbmap us
}

case "$BLOCK_BUTTON" in
    1|2|3)
        i3-msg -q "exec --no-startup-id $(switch_keyboard_layout)"
esac

printf "%s\n" " $(query_keyboard_layout)"
