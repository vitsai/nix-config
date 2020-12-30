#exec i3 -V >> ~/i3log-$(date + '%F-%k-%M-%S') 2>&1
xrdb -merge ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
#exec xrandr --output DP-2 --auto --above eDP-1
sh ~/.fehbg &
exec i3
#exec xmonad
#exec i3 --shmlog-size=26214400
