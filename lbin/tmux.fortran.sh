#! /bin/sh


## Places I got info for this script ##
# https://tao-of-tmux.readthedocs.io/en/latest/manuscript/10-scripting.html
# https://stackoverflow.com/questions/48619192/tmux-split-window-using-shell-script
# https://superuser.com/questions/660013/resizing-pane-is-not-working-for-tmux-on-mac
# https://unix.stackexchange.com/questions/352436/tmux-select-window-with-altnumber
# https://ryan.himmelwright.net/post/scripting-tmux-workspaces/

SESSION="Fortran"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
echo "Hi"
echo "$SESSIONEXISTS"
if [ "$SESSIONEXISTS" = "" ] 
then
	tmux new-session -d -s $SESSION
	tmux rename-window -t 0 "Main"
	tmux send-keys "vim new.f90" Enter
	tmux split-window -h -t "Main"
	tmux send-keys "bc" Enter
	tmux new-window -t $SESSION:1 -n "Reference"
	tmux send-keys "man cc" Enter
	tmux selectw -t "Main"
	tmux selectp -L
fi
