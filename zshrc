# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh-custom

DISABLE_UPDATE_PROMPT=true

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bgraham"

DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, safe-paste)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/bgraham/bin:/home/bgraham/.local/bin

setopt histignorealldups sharehistory
unsetopt correctall
setopt autocd correct

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias ls='ls --color=auto'
alias ll='ls -alh'
alias grep='grep --color'
alias dj='python manage.py'
alias tmux='tmux -2'  # 256 colour
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh 
# dont have virtualenv wrapper modify prompt; prompt already knows about virtualenvs
export VIRTUAL_ENV_DISABLE_PROMPT=1

export EDITOR='vim'
export PAGER='less -S'  # don't wrap

# initialise fasd if it's around
if command -v fasd &>/dev/null; then
    eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-wcomp zsh-ccomp-install zsh-wcomp-install)"
fi

alias t='task'

# syntax-highlighted cat, if pygmentize is around
if command -v pygmentize &>/dev/null; then
    alias c='pygmentize -O style=monokai -f console256 -g'
fi

# bump command and show an empty PS1; bring old command back after executing
bindkey "^Q" push-input

# allow local configs too
if [ -e $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi

# use 'cdp' as shortcut for cding with fasd
function cdp() {
    local dir=`fasd -ld "$1" | tail -n1`
    cd "$dir"
}

# [ http://qq.is/article/ssh-keys-through-screen ]
# Predictable SSH authentication socket location.
SOCK="/tmp/ssh-agent-$USER-tmux"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]; then
    rm -f /tmp/ssh-agent-$USER-tmux
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

# ^xe to open command in $EDITOR
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line


# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;5;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

if [ -e $HOME/bin/agent-restore ]; then
    source $HOME/bin/agent-restore
fi
