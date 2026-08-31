#!/bin/bash

BONGO_CLASS="BongoCat.x86_64"

ACTIVE_CLASS=$(hyprctl activewindow -j | jq -r '.class')

if [ "$ACTIVE_CLASS" = "$BONGO_CLASS" ]; then
    hyprctl dispatch 'hl.dsp.focus({ last = true })'
else
    BONGO_ADDRESS=$(hyprctl clients -j | jq -r \
        --arg class "$BONGO_CLASS" \
        '.[] | select(.class == $class) | .address' | head -n1)

    if [ -n "$BONGO_ADDRESS" ]; then
        hyprctl dispatch "hl.dsp.focus({ window = 'address:$BONGO_ADDRESS' })"
    fi
fi
