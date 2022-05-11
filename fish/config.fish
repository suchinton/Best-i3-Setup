if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.

#
cat ~/.cache/wal/sequences
alias update_cs="wal -i "$(grep -m1 'file=' ./.config/nitrogen/bg-saved.cfg | sed 's/file=//' | xargs echo -n)" -n"

#neofetch
neofetch --ascii 

#switch between bash and zsh and fish
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'
alias upqll="paru -Syu --noconfirm"
alias upal="paru -Syu --noconfirm"

#alias to get to /home/suchinton/
alias home='cd /home/suchinton/'

#alias to get to /linux-stuff/
alias linstuff='cd /home/suchinton/linux-stuff/'

#alias to get to /all\ walls/
alias allwalls='cd /home/suchinton/Pictures/wallpapers/all\ walls/'

#alias to set flatpak theme
alias set_flatpak_theme='sudo flatpak override --filesystem=$HOME/.themes & read name & sudo flatpak override --env=GTK_THEME=$name'

#alias to launch vs code in cpp_stuff
alias ccpp='code /home/suchinton/cpp_stuff/'

#alias to repair pacman after time-shift (pacman currently in use)
alias repair-pacman "sudo rm /var/lib/pacman/db.lck"

#alias to launch gnome control center to add accounts for evolution mail
alias gnome_c_c "env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"

#alis to launch gnome tweaks till lxappearance works
alias gnome_tweaks "env XDG_CURRENT_DESKTOP=GNOME gnome-tweaks"

