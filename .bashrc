#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Tools
alias l='hyprlock'
alias editbashrc='vim ~/.bashrc && source ~/.bashrc'
alias sus='systemctl suspend'
alias br='sudo vim /sys/class/backlight/intel_backlight/brightness'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias wiki='vim ~/vimwiki/index.wiki'
alias night='redshift -PO 2500'
alias sc='hyprshot -m region --clipboard-only'

# Zeit
alias monat='date +"%Y-%m"'
alias tag='date +"%Y-%m-%d %a"'
alias zeit='date +"%Y-%m-%d %a %H:%M"'
alias timestamp='function _timestamp(){ zeit >> "$1" && vim "$1"; }; _timestamp'
alias tomate="clear && echo 25 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 24 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 23 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 22 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 21 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 20 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 19 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 18 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 17 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 16 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 15 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 14 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 13 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 12 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 11 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 10 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 9 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 8 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 7 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 6 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 5 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 4 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 3 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 2 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 1 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && clear && zeit >> /home/rangi/0a/Listen/tomate && clear && termdown 5m"

# Logs
alias allnighterlog="tag >> ~/0a/Listen/Baumstämme/allnighterlog"
alias foodlog="zeit >>      ~/0a/Listen/Baumstämme/foodlog    && vim ~/0a/Listen/Baumstämme/foodlog"
alias workoutlog="zeit >>   ~/0a/Listen/Baumstämme/workoutlog && vim ~/0a/Listen/Baumstämme/workoutlog"
alias geldlog="tag >>       ~/0a/Listen/Baumstämme/Geld/geldlog    && vim ~/0a/Listen/Baumstämme/Geld/geldlog"
alias finanzlog="monat >>   ~/0a/Listen/Baumstämme/Geld/finanzlog  && vim ~/0a/Listen/Baumstämme/Geld/finanzlog"
alias gewichtlog="tag >>    ~/0a/Listen/Baumstämme/gewichtlog && vim ~/0a/Listen/Baumstämme/gewichtlog"
alias clog="zeit >> ~/0a/Listen/Baumstämme/clog"
alias plog="zeit >> ~/0a/Listen/Baumstämme/plog"

# Lists
alias tasks='grep "\- ( )" * -r'
alias todo='vim ~/0a/Listen/todo'
alias einkaufsliste='vim ~/0a/Listen/einkaufsliste'
alias russianroulette='sudo pacman -Syu'
alias emptyTrash='\rm -fr ~/.trash/*'

# fun
alias flag="blahaj -f -c"
alias lolfetch='neofetch | lolcat'
alias loltop='top | lolcat'
alias katze='echo -e "░░░░░░░░░░░░░░░░░░░░░▄▀░░\n░░░░░░░░░░░░░░░░░░░▄▀▐░░░▌\n░░░░░░░░░░░░░░░░▄▀▀▒▐▒░░░▌\n░░░░░▄▀▀▄░░░▄▄▀▀▒▒▒▒▌▒▒░░▌\n░░░░▐▒░░░▀▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒█\n░░░░▌▒░░░░▒▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄\n░░░░▐▒░░░░░▒▒▒▒▒▒▒▒▒▌▒▐▒▒▒▒▒▀▄\n░░░░▌▀▄░░▒▒▒▒▒▒▒▒▐▒▒▒▌▒▌▒▄▄▒▒▐\n░░░▌▌▒▒▀▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒█▄█▌▒▒▌\n░▄▀▒▐▒▒▒▒▒▒▒▒▒▒▒▄▀█▌▒▒▒▒▒▀▀▒▒▐░░░▄\n▀▒▒▒▒▌▒▒▒▒▒▒▒▄▒▐███▌▄▒▒▒▒▒▒▒▄▀▀▀▀\n▒▒▒▒▒▐▒▒▒▒▒▄▀▒▒▒▀▀▀▒▒▒▒▄█▀░░▒▌▀▀▄▄\n▒▒▒▒▒▒█▒▄▄▀▒▒▒▒▒▒▒▒▒▒▒░░▐▒▀▄▀▄░░░░▀\n▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▄▒▒▒▒▄▀▒▒▒▌░░▀▄\n▒▒▒▒▒▒▒▒▀▄▒▒▒▒▒▒▒▒▀▀▀▀▒▒▒▄▀"'

# ping & ssh
# hidden ----------------------------------
# hidden ----------------------------------
# hidden ----------------------------------
# hidden ----------------------------------
# hidden ----------------------------------
# hidden ----------------------------------


# Should be default
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='f() { for file in "$@"; do mv "$file" ~/.trash/"$(date +"%Y-%m-%d %H:%M:%S") $(basename "$file")"; done; }; f'
PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\$ ' # greener

# When I open a terminal
zeit
bat


# Created by `pipx` on 2024-03-19 04:06:14
export PATH="$PATH:/home/rangi/.local/bin"
