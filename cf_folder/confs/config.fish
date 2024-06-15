#  teste#

set -x EDITOR nvim
set -x R_LIBS_USER /home/manchot/.local/R
set -x LS_COLORS "di=0;92"
fish_ssh_agent
fish_add_path /sbin
fish_add_path /snap/bin
fish_add_path $HOME/.cargo/bin 
fish_add_path /home/manchot/.Scripts
fish_add_path /home/manchot/.local/bin
fish_add_path /home/manchot/.local/share/gem/ruby/3.0.0/bin

set fish_greeting
fzf --fish | source
zoxide init fish --cmd cd | source

alias webcam="sudo vim /etc/modprobe.d/blacklist.conf"     
alias pw="poweroff"
alias ll="vim /home/manchot/Documents/ingles"
alias kb="setxkbmap -model abnt2 -layout br; xmodmap .xmodmap"
alias py="python"
alias yt="youtube-dl -x --audio-format mp3 "
alias bm="bashmount"
alias cal="ncal -b"
alias tm="transmission-remote -l"
alias tma="transmission-remote -a"
alias ap="sudo apt install"
alias apr="sudo apt purge "
alias apu="sudo apt update "
alias apg="sudo apt upgrade "
alias apl="sudo apt list --upgradable"
alias apa="sudo apt autopurge"
alias bton="bluetoothctl connect A0:AC:69:3D:69:0D"
alias btoff="bluetoothctl disconnect A0:AC:69:3D:69:0D"
# alias ghcid="kitty --class='ghcid' ghcid --allow-eval&"
alias rmpc="sudo rm /var/lib/pacman/db.lck"
alias vifm="vifmrun . /home/manchot"
alias dm="encfs /home/manchot/Insync/crstcoolv@gmail.com/Google\ Drive/Sync/Sync/cript /home/manchot/.local/mnt"
alias ph="encfs /home/manchot/.local/mnt/.enc /home/manchot/.local/enc"
alias phx="fusermount -u /home/manchot/.local/enc"
alias dmx="fusermount -u /home/manchot/.local/mnt"
alias pcre="sudo reflector -l 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias siv="sxiv /home/manchot/.local/enc/*"
alias apo="sudo apt autoremove"

alias tempo="curl wttr.in"

alias rs="redshift -O 4800"
alias rsx="redshift -x"

alias hdmi="xrandr --output HDMI1 --auto --set audio on"
alias hdmioff="xrandr --output HDMI1 --auto --off"

if status --is-login
     if test -z "$DISPLAY" -a $XDG_VTNR = 1
         exec startx -- vt1 &> /dev/null
     end
end

# if status is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#         exec startx -- -keeptty &> /dev/null
#     end
# end


export BAT_THEME='Nord'
export FZF_DEFAULT_OPTS='
 --color fg:250,bg:0,hl:2,fg+:15,bg+:0,hl+:108
 --color info:108,prompt:2,spinner:108,pointer:0,marker:2
'
fish_add_path /home/manchot/.cargo/bin
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

function fish_right_prompt
  #intentionally left blank
end

#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/manchot/.ghcup/bin # ghcup-env
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

set -g FZF_COMPLETION_TRIGGER '**'
