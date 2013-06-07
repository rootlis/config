source ~/.bashmarks.sh

#make it pretty
autoload -U colors && colors
export PROMPT="[ %{$fg[blue]%}%n%{$reset_color%} %{$fg[red]%}%~%{$reset_color%} ]# "
export RPROMPT="%{$fg[blue]%}[%T]%{$reset_color%}"

#environment variables
export PATH=/usr/local/share/python3:/usr/local/sbin:$HOME/local/node/bin:/opt/local/bin:/opt/local/sbin:$PATH

#Set autocompletion on
autoload -U compinit && compinit

#Misc Options
setopt correctall
setopt autocd
setopt auto_resume
setopt extendedglob

#ZSH styles
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bsorry, no matches for: %d%b'

#History
export HISTFILE=~/.zsh-histfile
export HISTSIZE=1000
export SAVEHIST=1000

#shortcuts
alias ls='ls -G -l'
