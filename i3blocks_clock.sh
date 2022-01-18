#!/bin/sh

# i3blocks clock module

case "$BLOCK_BUTTON" in
    1|2|3)
        i3-msg -q "exec --no-startup-id alacritty --command tty-clock -s -C 1"
esac

printf "%s\n" " $(date +%H:%M)"
