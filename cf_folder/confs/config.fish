# teste#
set -x EDITOR nvim

fish_add_path /home/manchot/.Scripts
fish_add_path /home/manchot/.local/bin

set fish_greeting

alias pw="poweroff"
alias yt="youtube-dl -x --audio-format mp3 "
alias bm="bashmount"
alias tm="transmission-remote -l"
alias tma="transmission-remote -a"
alias pc="sudo pacman -Sy "
alias pcr="sudo pacman -Rns "
alias pcu="sudo pacman -Syu "
alias bton="bluetoothctl connect 00:14:41:22:82:8E"
alias btoff="bluetoothctl disconnect 00:14:41:22:82:8E"
alias ghcid="kitty --class='ghcid' ghcid --allow-eval&"
alias rmpc="sudo rm /var/lib/pacman/db.lck"
alias vifm="vifm . /home/manchot"
alias dm="encfs /home/manchot/Sync/cript /home/manchot/.local/mnt"
alias ph="encfs /home/manchot/.local/mnt/.enc /home/manchot/.local/enc"
alias phx="fusermount -u /home/manchot/.local/enc"
alias dmx="fusermount -u /home/manchot/.local/mnt"
alias pcre="sudo reflector -l 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias siv="sxiv /home/manchot/.local/enc/*"
alias pco="sudo pacman -Qtdq | sudo pacman -Rns -"

alias tempo="curl wttr.in"

alias rs="redshift -O 4800"
alias rsx="redshift -x"

alias hdmi="xrandr --output HDMI1 --auto --set audio on"
alias hdmi_off="xrandr --output HDMI1 --auto --off"

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- vt1 &> /dev/null
    end
end

export BAT_THEME='Nord'
export FZF_DEFAULT_OPTS='
 --color fg:250,bg:0,hl:2,fg+:15,bg+:0,hl+:108
 --color info:108,prompt:2,spinner:108,pointer:0,marker:2
'
fish_add_path /home/manchot/.cargo/bin
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/manchot/.ghcup/bin $PATH # ghcup-env

function fish_right_prompt
  #intentionally left blank
end
