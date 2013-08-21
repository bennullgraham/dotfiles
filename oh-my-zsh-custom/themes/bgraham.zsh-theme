# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'


# git stuff
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%{$my_orange%}*%{$reset_color%}"
zstyle ':vcs_info:*' unstagedstr "%{$my_orange%}*%{$reset_color%}"
zstyle ':vcs_info:*' actionformats \
    "%{$FG[036]%}(%c%u%{$FG[031]%}%b%{$FG[015]%}!%a%{$FG[036]%})"
zstyle ':vcs_info:*' formats       \
    "%{$FG[036]%}(%c%u%{$FG[031]%}%b%{$FG[036]%})"
function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "%{$FG[242]$BG[235]%} `basename $VIRTUAL_ENV` "
}

function precmd {
    vcs_info
}

P_HOST="%{$bold_color$FG[036]%}%m%{$reset_color%}"
P_PATH="%{$FG[000]$BG[015]%}%~"
P_VCS=""
# primary prompt

PROMPT='$P_HOST${vcs_info_msg_0_} \
%{$FG[105]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}>>> %{$reset_color%}'

# right prompt
RPROMPT='$P_PATH$(virtualenv_info)%{$reset_color%} %T'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
