# if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#   exec startx
# fi
# exec dropbox
xrandr --output DP-2 --auto --above eDP-1
sh ~/.fehbg
xmodmap ~/.Xmodmap
