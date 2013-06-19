#make it pretty
autoload -U colors && colors
PROMPT="[%{$fg[blue]%}(%n@%M)%{$reset_color%} %{$fg[red]%}%~%{$reset_color%}]# "
RPROMPT="%{$fg[blue]%}[%T]%{$reset_color%}"

#environment variables
export PATH=/usr/local/sbin:/home/matt/.gem/ruby/1.9.1/bin:$PATH

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

# color output
eval `dircolors`
alias -g ls='ls --color'

# escape sequences
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[7~" beginning-of-line
bindkey "^[[3~" delete-char
bindkey "^[[2~" quoted-insert
bindkey "^[[5C" forward-word
bindkey "^[[5D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# for rxvt
bindkey "^[[8~" end-of-line

# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line

# for freebsd console
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
$endif
