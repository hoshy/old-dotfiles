[ -f $HOME/.antigen.zsh ] && source $HOME/.antigen.zsh

export LANG=en_US.utf8
export LC_ALL=$LANG
export LANGUAGE=$LANG

AUTOENV_FILE_ENTER=.env
AUTOENV_LOOK_UPWARDS=0
DEFAULT_USER=thorsten
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COLOR_SCHEME='light'

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles.
antigen bundle Tarrasch/zsh-autoenv
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle $HOME/.oh-my-zsh/custom/plugins/thorsten

# Load the theme.
# antigen theme KuoE0/oh-my-zsh-solarized-powerline-theme solarized-powerline
antigen theme bhilburn/powerlevel9k powerlevel9k

setopt append_history
setopt no_share_history

# Check if we have additional local configs to load
[ -f $HOME/.zsh_local ] && source $HOME/.zsh_local

# Tell antigen that you're done.
antigen apply

[ -f $HOME/.zsh_aliases ] && source $HOME/.zsh_aliases
