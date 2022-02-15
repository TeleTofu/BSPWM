# Created by newuser for 5.8

export LC_ALL=en_US.UTF-8 cava

# Enable colors and change prompt:
autoload -U colors && colors

# Special prompt theme stuffs.
autoload -Uz promptinit
promptinit
prompt elite2

# Colors
BUFFER_GOOD="green"
BUFFER_BAD_DIR="yellow"
BUFFER_BAD="red"
BUFFER_AMBIGUOUS="93"

PROMPT=$'%F{magenta}┌$($PWD)}%b%B%F{magenta}⎛%F{magenta}%b%d%B⎠%b%f$prompt_newline%F{magenta}└─> %f'

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Text highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# autosuggest
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Starship prompt
#eval "$(starship init zsh)"
setopt auto_cd

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

