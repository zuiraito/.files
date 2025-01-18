# .files
Dotfiles

# Applications
- syncthing
- tty-clock
- ulauncher
- kitty
- firefox
- tuxedo-control-center
- zathura
# Hotkeys
| Key | Function |
| --- | -------- |
| SUPER + e | Open graphical file manager |
| SUPER + j | switch selected window |
| SUPER + q | Quit |
| SUPER + t | Open terminal (kitty)  |
| SUPER + (1,...,0) | Switch to desktop 1-10 |
| SUPER + SHIFT + (1,...,0) | Move window to desktop 1-10 |
| CTRL + SPACE| Application Launcher (ulauncher) |

# .bashrc
## Aliases
| Alias | Function |
| --- | ---------- |
| g | manage finances |
| x | exti terminal |
 |sus | suspend |
 |ff | fastfetch |
 |monat | print year with month |
| uhr | show a unicode clock |
| zeit | date command but more human readable |
| timestamp | timestamp a file |
 |heute | todays scedule |
 |morgen | tomorrows scedule |
 |wetter or wttr | show human readable weather |
 |update | launch several applications to stay up to date with news and messages |
| gutenmorgen | launch a script to start the day |
| hilfe | launch a script that helps out |
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
