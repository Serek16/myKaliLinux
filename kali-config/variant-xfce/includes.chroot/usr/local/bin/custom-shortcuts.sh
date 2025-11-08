# List all shortcuts
#xfconf-query -c xfce4-keyboard-shortcuts -lv

# Alt + A / Alt + Shift + A
xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Alt>A" --create --type string --set "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Shift><Alt>A" -n -t string -s "move_window_left_workspace_key"

# Alt + D / Alt + Shift + D
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>D" -n -t string -s "right_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Shift><Alt>D" -n -t string -s "move_window_right_workspace_key"

# Remove default: Ctrl + Alt + {Left/Right/Up/Down}
xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Primary><Alt>Left" --reset --recursive
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Right" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Up" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Down" -r -R

# Ctrl + Alt + Del
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Primary><Alt>Delete" -n -t string -s "xflock4"

# Alt + Tab
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Tab" -n -t string -s "cycle_windows_key"

# Remove <Super> key for xfce4-popup-whiskermenu
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/Super_L" -r -R

# Super + A
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>A" -n -t string -s "xfce4-popup-whiskermenu"

# Super + Left
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Left" -n -t string -s "tile_left_key"
# Alt + Left
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Left" -n -t string -s "tile_left_key"

# Super + Right
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Right" -n -t string -s "tile_right_key"
# Alt + Right
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Right" -n -t string -s "tile_right_key"

# Super + Up
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Up" -n -t string -s "maximize_window_key"
# Alt + Up
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Up" -n -t string -s "maximize_window_key"

# Super + Down
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Down" -n -t string -s "hide_window_key"
# Alt + Down
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Down" -n -t string -s "hide_window_key"
