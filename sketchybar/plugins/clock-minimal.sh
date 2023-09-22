#!/usr/bin/env zsh

sketchybar --set $NAME label="$(date '+%I:%M')" \
    label.padding_left=0 \
    label.padding_right=10
# sketchybar --set $NAME label="$(date '+%I:%M %p')"

