#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LS_OPTIONS='--color=auto'

GREEN="$(tput setaf 10)"
RESET="$(tput sgr0)"

#export PS1='\[${GREEN}\]\u \W\[${RESET}\] '
export PS1='\[${GREEN}\]\W\[${RESET}\] '
eval $(dircolors ~/.dircolors)
alias ls='ls $LS_OPTIONS'

[ "$DISPLAY" ] && xset b 100

shopt -s autocd

alias peanut='wget -q -o /dev/null `wget -q -o /dev/null "comm-and.tumblr.com/api/read/?type=photo&num=50" -qO - | grep -oP "photo-url max-width=\"1280\">.*?</photo-url" | grep -oP "https://.*?\.(png|jpg|gif)" | shuf -n 1` -qO peanut; img2txt -d none --width `stty size | grep -o "\s.*"` -x6 -y 12 -g 0.6 peanut'
alias config='/usr/bin/git --git-dir=/home/hannah/.cfg/ --work-tree=/home/hannah'
