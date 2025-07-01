alias x='exit'
alias c='clear && source ~/.zshrc'
alias cd='z'
alias vim='nvim'
alias svim='sudo nvim'
alias y='yazi'
alias f='fastfetch'
alias t='cd ~/Notizen/ && grep -r --include="*.md" '\''^[[:space:]]*- \[ \]'\'' . | awk -F: '\''{ printf "%-30s %s\n", $1, $2 }'\'''

# Achtung, bash und zsh sind unterschiedlich, die -v flag auf bash ist -d 'tomorrow' oder -d 'yesterday'
alias heute="vim ~/Notizen/daily/$(date +'%y-%m-%d_%A').md"
alias morgen="vim ~/Notizen/daily/$(date -v+1d +'%y-%m-%d_%A').md"
alias gestern="vim ~/Notizen/daily/$(date -v-1d +'%y-%m-%d_%A').md"

# fuzzy vim, cat and zathura (Usage: 'fim search term')
fim() {
  local query file
  query="$*"
  file=$(fzf -q "$query")
  [ -n "$file" ] && vim "$file"
}
fat() {
  local query file
  query="$*"
  file=$(fzf -q "$query")
  [ -n "$file" ] && cat "$file"
}
fim() {
  local query file
  query="$*"
  file=$(fzf -q "$query")
  [ -n "$file" ] && fathura "$file"
}


export EDITOR=vim
