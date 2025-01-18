# .files
Dotfiles

# Applications
- syncthing
- tty-clock
# .bashrc
## Aliases
```
alias x='exit'
alias sus='systemctl suspend'
alias ff='fastfetch'
# Zeit
alias monat='date +"%Y-%m"'
alias uhr='tty-clock -c'
alias zeit='date +%Y-%m-%d\ %a\ %H:%M'
alias timestamp='function _timestamp(){ zeit >> "$1" && vim "$1"; }; _timestamp'
# Workflow
alias heute='(cd ~/0a/Listen/Tagesplan/ && ./heute.sh)'
Location=""
alias morgen='(cd ~/0a/Listen/Tagesplan/ $$ ./morgen.sh)'
alias wetter='clear && curl v2.wttr.in/$Location'
alias wttr='clear &&curl v2.wttr.in/$Location'
alias update="firefox tagesschau.de && firefox web.whatsapp.com && firefox instagram.com && firefox https://mattermost.warr.de/ && signal-desktop && clear && echo -e '\n  done, :3.\n'"
alias gutenmorgen='(cd ~/Scripts/ && ./morgen.sh)'
alias hilfe='(cd ~/Scripts/ && ./hilfe.sh)'
# Logs
alias g="date +%y-%m-%d\ %a >> ~/0a/Listen/Baumstämme/Geld/geldlog && vim ~/0a/Listen/Baumstämme/Geld/geldlog"
```
- Set the location for weather
## Visual
```
PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\$ ' # greener
```


# Desktop Environments
## Gnome
Change window resizing from SUPER+MB3 to SUPER+MB2 
```
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
```
