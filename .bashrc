#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Tools
alias l='hyprlock'
alias editbashrc='vim ~/.bashrc && source ~/.bashrc'
alias sus='systemctl suspend'
alias br='sudo vim /sys/class/backlight/amdgpu_bl1/brightness'
alias wiki='vim ~/vimwiki/index.wiki'
alias night='hyprsunset -t 3000 >/dev/null &'
alias nonight='pkill hyprsunset'
alias sc='hyprshot -m region --clipboard-only'
alias x='exit'
alias settings='vim ~/.config/hypr/hyprland.conf'
alias gimme='sudo pacman -S '

# Projection
alias mhelp="echo -e '\n  Use the letter m followed by action without a space\n\n  30/60/120 - set fps\n  mirror    - mirror internal display to external\n  home      - set monitor preferences for the setup at home\n  vertical  - use portrait mode for external display\n  default   - trivial\n  rotate    - rotate the external screen (0=horizontal, 1=vertical, ...)\n'"
alias m="vim ~/.config/hypr/hyprland.conf +/'# monitor'"
alias m30='hyprctl keyword monitor eDP-1,2880x1800@30,0x0,1.5'
alias m60='hyprctl keyword monitor eDP-1,2880x1800@60,0x0,1.5'
alias m120='hyprctl keyword monitor eDP-1,2880x1800@120,0x0,1.5'
alias m1='hyprctl keyword monitor eDP-1,2880x1800@120,0x0,1'
alias m1.5='hyprctl keyword monitor eDP-1,2880x1800@120,0x0,1.5'
alias m2='hyprctl keyword monitor eDP-1,2880x1800@120,0x0,2'
# alias mrotate='hyprctl keyword monitor = , preferred, auto, 1, transform, '

alias startzerotier='sudo systemctl start zerotier-one'
alias stopzerotier='sudo systemctl stop zerotier-one'
alias startbluetooth='sudo systemctl start bluetooth.service && blueman-manager'
alias stopbluetooth='sudo systemctl stop bluetooth.service'

alias darktable='GDK_BACKEND=wayland darktable &'
alias vcv='(cd ~/Packages/Rack2Free/ && ./Rack) &'

# Kaltext
kalender_path=~/Kaltext
alias t="grep -H '( )' $kalender_path/* | sed 's|^[^w]*w||'"
function whyDoesJustTagNotWorkIhaveToSetAnAliasNowTag() {
    weekday=$(date +%A)
    year=$(date +%y); week=$(date +%V); week=$(printf "%02d" $week)
    case "$weekday" in
      "Monday") weekday="Montag" ;; "Tuesday") weekday="Dienstag" ;; "Wednesday") weekday="Mittwoch" ;; "Thursday") weekday="Donnerstag" ;; "Friday") weekday="Freitag" ;; "Saturday") weekday="Samstag" ;; "Sunday") weekday="Sonntag" ;; *) weekday="" ;;
    esac
    awk -v pattern="$weekday" '($0 ~ pattern) {found=1} found && /┌/ {exit} found' $kalender_path/${year}w${week} 
}
alias tag='whyDoesJustTagNotWorkIhaveToSetAnAliasNowTag'
wochen() {
    if [ -z "$1" ]; then
        echo "Syntax: wochen {anzahl}"
        return 1  # Exit the function with an error status
    fi
    year=$(date +%y); week=$(date +%V); week=$(printf "%02d" $week)
    for ((i = 1; i <= $1; i++))
    do
        [ -e $kalender_path/${year}w${week} ] && cat $kalender_path/${year}w${week}
        week=$(($week+1))
	if [ $week -gt 52 ]; then
	    week=0
	    year=$(($year+1))
        fi
    done
}
woche() {
    year=$(date +%y); week=$(date +%V); week=$(printf "%02d" $week)
    cat $kalender_path/${year}w${week}
}
function whyDoesJustTerminNotWorkIhaveToSetAnAliasNowTermin() {
  local current_dir=$(pwd)
  cd $kalender_path && ./open_week.sh "$@"
  cd "$current_dir"
}
alias termin='whyDoesJustTerminNotWorkIhaveToSetAnAliasNowTermin'

# Zeit
alias monat='date +"%Y-%m"'
alias uhr='tty-clock -c -f $(date +"%d.%m.20%y")'
alias zeit='date +%y-%m-%d\ %a\ %H:%M' 
alias timestamp='function _timestamp(){ zeit >> "$1" && vim "$1"; }; _timestamp'
alias tomate="clear && echo 25 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 24 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 23 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 22 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 21 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 20 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 19 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 18 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 17 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 16 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 15 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 14 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 13 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 12 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 11 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 10 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 9 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 8 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 7 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 6 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 5 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 4 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 3 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 2 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && echo 1 && ./0a/.Scripts/drawATomato.sh && sleep 1m && clear && clear && zeit >> /home/rangi/0a/Listen/tomate && clear && termdown 5m"

# Logs
alias geldlog="date +%y-%m-%d\ %a >>       ~/0a/Listen/Baumstämme/Geld/geldlog    && vim ~/0a/Listen/Baumstämme/Geld/geldlog"
alias medienlog="zeit >>    ~/0a/Listen/Baumstämme/medienlog && vim ~/0a/Listen/Baumstämme/medienlog"
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias chartbat='(cd ~/0a/Listen/Baumstämme/ && python visual.py batlog && python screen\ time\ distribution.py)'
alias update="firefox tagesschau.de && firefox web.whatsapp.com && firefox instagram.com && firefox https://mattermost.warr.de/ && signal-desktop && clear && echo -e '\n  done, gj!\n'"
alias morgen='(cd ~/Scripts/ && ./morgen.sh)'
alias hilfe='(cd ~/Scripts/ && ./hilfe.sh)'

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
alias katze='~/Scripts/katze.sh'

# UNI
# hidden

# ping & ssh
# hidden

# Should be default
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='f() { for file in "$@"; do mv "$file" ~/.trash/"$(date +"%Y-%m-%d %H:%M:%S") $(basename "$file")"; done; }; f'
PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\$ ' # greener

# Created by `pipx` on 2024-03-19 04:06:14
export PATH="$PATH:~/.local/bin"

# when opening a new terminal
[ $((RANDOM % 51)) -eq 0 ] && ls ~/Scripts/Katzen/* | shuf -n 1 | xargs cat

alias neofetch='fastfetch'
