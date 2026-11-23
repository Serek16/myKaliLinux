# List all shortcuts
#xfconf-query -c xfce4-keyboard-shortcuts -lv

# Switch/move window to left workspace (Alt + A) / (Alt + Shift + A)
xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Alt>A" --create --type string --set "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Shift><Alt>A" -n -t string -s "move_window_left_workspace_key"

# Switch/move window to right workspace (Alt + D) / (Alt + Shift + D)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>D"        -n -t string -s "right_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Shift><Alt>D" -n -t string -s "move_window_right_workspace_key"

# Remove default: Ctrl + Alt + {Left/Right/Up/Down}
xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Primary><Alt>Left" --reset --recursive
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Right" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Up"    -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Down"  -r -R

# Lock screen (Super + L)
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>L" -n -t string -s "xflock4"

# (Alt + Tab)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Tab" -n -t string -s "cycle_windows_key"

# Remove <Super> key for xfce4-popup-whiskermenu
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/Super_L" -r -R

# Start Menu - (Alt + `)
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Alt>grave" -n -t string -s "xfce4-popup-whiskermenu"

# Tile window to left (Super + Left)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Left" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Left" -n -t string -s "tile_left_key"

# Tile window to right (Super + Right)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Right" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Right" -n -t string -s "tile_right_key"

# Tile window to top (Super + Up)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Up" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Up" -n -t string -s "maximize_window_key"

# Tile window to bottom (Super + Down)
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Down" -r -R
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Down" -n -t string -s "hide_window_key"


# Alternative shortcuts (Alt instead of Super)

# Tile window to left (Alt + Left)
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Left" -n -t string -s "tile_left_key"

# Tile window to right (Alt + Right)
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Right" -n -t string -s "tile_right_key"

# Tile window to top (Alt + Up)
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Up" -n -t string -s "maximize_window_key"

# Tile window to bottom (Alt + Down)
#xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>Down" -n -t string -s "hide_window_key"


# Qt QTerminal custom shortcuts:
# Previous tab   (Alt + Q)
sed -i 's/Previous%20Tab=.*/Previous%20Tab=Alt+Q/g' ~/.config/qterminal.org/qterminal.ini
# Next tab       (Alt + E)
sed -i 's/Next%20Tab=.*/Next%20Tab=Alt+E/g' ~/.config/qterminal.org/qterminal.ini
# Move tab left  (Alt + Shift + Q)
sed -i 's/Move%20Tab%20Left=.*/Move%20Tab%20Left=Alt+Shift+Q/g' ~/.config/qterminal.org/qterminal.ini
# Move tab right (Alt + Shift + E)
sed -i 's/Move%20Tab%20Right=.*/Move%20Tab%20Right=Alt+Shift+E/g' ~/.config/qterminal.org/qterminal.ini

# GTK4 xfce4-terminal GTK4 custom shortcuts:
mkdir -p ~/.config/xfce4/terminal
echo "ShortcutsNoMnemonics=TRUE" >> ~/.config/xfce4/terminal/terminalrc
echo '
(gtk_accel_path "<Actions>/terminal-window/prev-tab" "<Alt>Q")
(gtk_accel_path "<Actions>/terminal-window/next-tab" "<Alt>E")
(gtk_accel_path "<Actions>/terminal-window/move-tab-left" "<Alt><Shift>Q")
(gtk_accel_path "<Actions>/terminal-window/move-tab-right" "<Alt><Shift>E")
' > ~/.config/xfce4/terminal/accels.scm
