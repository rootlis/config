source ~/.bashmarks.sh

#make it pretty
autoload -U colors && colors
PROMPT="[ %{$fg[blue]%}%n%{$reset_color%} %{$fg[red]%}%~%{$reset_color%} ]# "
RPROMPT="%{$fg[blue]%}[%T]%{$reset_color%}"

#environment variables
export PATH=/usr/local/sbin:$HOME/local/node/bin:/opt/local/bin:/opt/local/sbin:$PATH

#Set autocompletion on
autoload -U compinit
compinit

#options
setopt correctall
setopt autocd
setopt auto_resume
setopt extendedglob

#ZSH styles
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bsorry, no matches for: %d%b'

HISTFILE=~/.zsh-histfile
HISTSIZE=1000
SAVEHIST=1000

#shortcuts
alias -g ews='ssh -X vanek1@linux64.ews.illinois.edu'
alias -g ews-nox='ssh vanek1@linux64.ews.illinois.edu'
alias -g luthien='ssh matt@2cats2curio.us'
alias ls='ls -G -l'
alias -g valgrind='valgrind --dsymutil=yes'

