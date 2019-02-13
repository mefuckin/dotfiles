HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

autoload -Uz compinit
compinit

autoload -U colors
colors

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats " %{$fg[yellow]%}%b%u%c"
precmd() {
    vcs_info
}

setopt PROMPT_SUBST

PROMPT='%{$fg_bold[green]%}%~${vcs_info_msg_0_} %{$fg[green]%}%#%{${reset_color}%} '

bindkey -e
bindkey "[1~" beginning-of-line
bindkey "[3~" delete-char
bindkey "[4~" end-of-line
bindkey "[1;5C" forward-word
bindkey "[1;5D" backward-word
