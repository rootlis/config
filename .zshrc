## Variables for setting assorted cases ##
OS=`uname`
HOSTNAME=`hostname -s`

## Enable Bashmarks ##
source ~/.bashmarks.sh


##  Prompt Appearance ##
# This gives us some helpful variables for setting colors
autoload -U colors && colors
export PROMPT="[ %{$fg[blue]%}%n%{$reset_color%} %{$fg[red]%}%3d%{$reset_color%} ]# "
if [[ -a /sys/class/power_supply/BAT0 ]]; then
    export RPROMPT="%{[%} %{$fg[red]%}$[100*$(</sys/class/power_supply/BAT0/energy_now)/$(</sys/class/power_supply/BAT0/energy_full)]%%%{$reset_color%} %{$fg[blue]%}%T%{$reset_color%} ]"
else
    export RPROMPT="%{$fg[blue]%}[%T]%{$reset_color%}"
fi


## PATH environment variable ##
# Remember the original path so we don't repeat the whole path every source
[ $ORIG_PATH ] || ORIG_PATH=$PATH
export ORIG_PATH
if [[ $HOSTNAME == 'geoff-peterson' ]]; then
    # MacPorts
    PYTHON_BIN=/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin
    PORT_BIN=/opt/local/bin:/opt/local/sbin
    export PATH=$PYTHON_BIN:$PORT_BIN:$ORIG_PATH
elif [[ $HOSTNAME == 'Martin-Vaneks-iMac' ]]; then
    # Homebrew
    PYTHON_BIN=/usr/local/share/python3
    BREW_BIN=/usr/local/sbin
    export PATH=$PYTHON_BIN:$BREW_BIN:$ORIG_PATH
else
    RUBY_BIN=/home/matt/.gem/ruby/1.9.1/bin
    OTHER_BIN=/usr/local/sbin
    export PATH=$RUBY_BIN:$OTHER_BIN:$ORIG_PATH
fi


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
# ls => long form, human readable sizes, color
if [[ $OS == 'Darwin' ]]; then
    alias ls='ls -lhG'
elif [[ $OS == 'Linux' ]]; then
    alias ls='ls -lh --color'
fi


## Bind escape sequences ##
# Ins
bindkey "[2~" quoted-insert
# Del
bindkey "[3~" delete-char
# Home
bindkey "[1~" beginning-of-line
# End
bindkey "[4~" end-of-line
# Page Up
bindkey "[5~" beginning-of-history
# Page Down
bindkey "[6~" end-of-history
