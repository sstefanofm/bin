#!/usr/bin/env sh

# i3blocks calendar module

case "$BLOCK_BUTTON" in
  1|2|3) 
    i3-msg -q "workspace 2:β; exec --no-startup-id alacritty --command calcurse"
esac

printf "%s\n" " $(date +%a) $(date +%d/%m/%y)"
