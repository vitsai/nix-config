#exec i3 -V >> ~/i3log-$(date + '%F-%k-%M-%S') 2>&1
xrdb -merge ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
sh ~/.fehbg &
exec i3
#exec xmonad
#exec i3 --shmlog-size=26214400
