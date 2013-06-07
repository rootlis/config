## Enable Bashmarks ##
source ~/.bashmarks.sh


##  Prompt Appearance ##
# This gives us some helpful variables for setting colors
autoload -U colors && colors
export PROMPT="[ %{$fg[blue]%}%n%{$reset_color%} %{$fg[red]%}%~%{$reset_color%} ]# "
export RPROMPT="%{$fg[blue]%}[%T]%{$reset_color%}"


## PATH environment variable ##
export PATH=/usr/local/share/python3:/usr/local/sbin:$HOME/local/node/bin:/opt/local/bin:/opt/local/sbin:$PATH


## Misc Options ##
# Auto-correct typos
setopt correctall
# "$ cd <dir>" == "$ <dir>"
setopt autocd
# Resume suspended job by typing the program name
setopt auto_resume
# '#', '~', and '^' are treated as parts of patterns for filename generation
setopt extendedglob


## History ##
export HISTFILE=~/.zsh-histfile
export HISTSIZE=1000
export SAVEHIST=1000


## Autocomplete ##
autoload -U compinit && compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bsorry, no matches for: %d%b'


## Shortcuts ##
alias ls='ls -G -l'
