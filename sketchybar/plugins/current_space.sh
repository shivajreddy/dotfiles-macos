#!/usr/bin/env zsh

update_space() {
    # SPACE_ID=$(echo "$INFO" | jq -r '."display-1"')

    SPACE_INDEX=$(yabai -m query --spaces --space | jq -r '.index')
    # echo "yabai -m query = $(yabai -m query --spaces --space | jq -r '.index')"

    # case $SPACE_ID in
    case $SPACE_INDEX in
    1)
        # This space will be for settings, messages, finder, and pop-ups
        ICON=
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    2)
        # only code, development
        ICON=
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    3)
        # browser and terminal
        ICON=
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    4)
        # music and chill
        ICON=󰅶
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    *)
        ICON=$SPACE_ID
        ICON_PADDING_LEFT=7
        ICON_PADDING_RIGHT=7
        ;;
    esac

    sketchybar --set $NAME \
        label=$LABEL \
        icon=$ICON \
        icon.padding_left=15 \
        icon.padding_right=15
}

# case "$SENDER" in
# "mouse.clicked")
#     # Reload sketchybar
#     sketchybar --remove '/.*/'
#     source $HOME/.config/sketchybar/sketchybarrc
#     ;;
# *)
#     update_space
#     ;;
# esac

update_space
