if status is-interactive
    # Commands to run in interactive sessions can go here
    set BAT_THEME "Catppuccin-mocha"
    set fish_greeting ""
    
    #aliases
    alias cat='bat'
    alias cd..='cd ..'
    alias cleanup='sudo pacman -Rns $(pacman -Qtdq);paru -c' #Cleanup orphaned packages
    alias clock='tty-clock -sct -C 4'
    alias cpu="ps axch -o cmd:15,%cpu --sort=-%cpu | head"
    alias df='df -h'
    alias e='exit'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias g='gotop'
    alias gc='git clone'
    alias gpgexportprivkey="gpg --export-secret-keys --armor"
    alias gpgimportkey="gpg --import"
    alias gpglistkeys="gpg --list-keys --keyid-format LONG"
    alias grep='grep --color=auto'
    alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
    alias jctl="journalctl -p 3 -xb" #get the error messages from journalctl
    alias killp='killprocess'
    alias kp='killprocess'
    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias less='bat'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'
    alias m='mocp'
    alias matrix='unimatrix -f -l ocCgGkS -s 96'
    alias mem="ps axch -o cmd:15,%mem --sort=-%mem | head"
    alias merge="xrdb -merge ~/.Xresources"
    alias mirror="sudo reflector -f 10 -l 10 --number 10 --verbose --save /etc/pacman.d/mirrorlist" # update your mirrors
    alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"
    alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
    alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
    alias mv='mv -i'
    alias pdw="pwd"
    alias pipes='pipes -R -t 1'
    alias q='exit'
    alias rg="rg --sort path --no-ignore --hidden" #search content with ripgrep
    alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" #Recent Installed Packages
    alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
    alias rm='rm -i'
    alias unlock="sudo rm /var/lib/pacman/db.lck"
    alias update='sudo pacman -Syyu'
    alias updatefonts='sudo fc-cache -fv'
    alias wget="wget -c" # continue the download
end
