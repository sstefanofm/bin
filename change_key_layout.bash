#!/bin/bash

get_keyboard() {
  setxkbmap -query | grep layout | awk 'NF{print $NF}'
}

switch_keyboard_layout() {
  [[ $(get_keyboard) = "us" ]] && setxkbmap es || setxkbmap us
}

switch_keyboard_layout

