####################
# xinitrc config
####################

# Load other xinitrc configs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Activate NUMLock on start
numlockx&

# Turn off bell
xset -b

# Start ssh agent
eval $(ssh-agent)

# Start screensaver in background
xscreensaver &

# Start GNOME
export XDG_CURRENT_DESKTOP=GNOME-Classic:GNOME
export GNOME_SHELL_SESSION_MODE=classic
exec gnome-session --session=gnome-classic
