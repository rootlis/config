## Variables for setting assorted cases ##
OS=`uname`
HOSTNAME=`hostname -s`


## Misc Options ##
bindkey -v              # Vi line editing mode
setopt autocd           # "$ cd <dir>" == "$ <dir>"
setopt auto_resume      # Resume suspended job by typing the program name


## Enable Bashmarks ##
source ~/.bashmarks.sh


##  Prompt Appearance ##
# Set helpful color variables
autoload -U colors && colors
# Perform command substitutions in-prompt
setopt PROMPT_SUBST
# Left side prompt value
export PROMPT="[ %{$fg[blue]%}%n%{$reset_color%} %{$fg[red]%}%3d%{$reset_color%} ]# "
# Right side prompt value conditional on available battery info
if [[ -a /sys/class/power_supply/BAT0 ]]; then
    BAT_NOW='$(</sys/class/power_supply/BAT0/energy_now)'
    BAT_FUL='$(</sys/class/power_supply/BAT0/energy_full)'
    BAT_PER='$[100*'$BAT_NOW'/'$BAT_FUL']%%'
    BAT_STA='$(</sys/class/power_supply/BAT0/status)'
    BAT_COL='${${${${'$BAT_STA'/Full/'$fg[green]'}/Unknown/'$fg[yellow]'}/Charging/'$fg[yellow]'}/Discharging/'$fg[red]'}'
    export RPROMPT='%{[%} %{'$BAT_COL'%}'$BAT_PER'%{$reset_color%} %{$fg[blue]%}%T%{$reset_color%} ]'
else
    export RPROMPT='%{$fg[blue]%}[%T]%{$reset_color%}'
fi


## PATH environment variable ##
# Remember the original path so we don't repeat the whole path every source
[ $ORIG_PATH ] || ORIG_PATH=$PATH
export ORIG_PATH
case $HOSTNAME in
    geoff-peterson)     # Macports
        PYTHON_BIN=/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin
        PORT_BIN=/opt/local/bin:/opt/local/sbin
        export PATH=$PYTHON_BIN:$PORT_BIN:$ORIG_PATH
    ;;
    Martin-Vaneks-iMac) # Homebrew
        PYTHON_BIN=/usr/local/share/python3
        BREW_BIN=/usr/local/sbin
        export PATH=$PYTHON_BIN:$BREW_BIN:$ORIG_PATH
    ;;
    white-devil)
        RUBY_BIN=/home/matt/.gem/ruby/1.9.1/bin
        OTHER_BIN=/usr/local/sbin
        export PATH=$RUBY_BIN:$OTHER_BIN:$ORIG_PATH
    ;;
esac


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
case $OS in
    Darwin) alias ls='ls -hG';;
    Linux)  alias ls='ls -h --color';;
esac


## Bind escape sequences ##
bindkey "[2~" quoted-insert           # Ins
bindkey "[3~" delete-char             # Del
bindkey "[1~" beginning-of-line       # Home
bindkey "[4~" end-of-line             # End
bindkey "[5~" beginning-of-history    # Page Up
bindkey "[6~" end-of-history          # Page Down
