# History settings

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Use Emacs key bindings
bindkey -e

# C-X C-E to edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# Completion
autoload -Uz compinit
compinit

autoload -U colors
colors

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats " %{$fg[yellow]%}(%b%u%c)"
precmd() {
    vcs_info
}

setopt PROMPT_SUBST

PROMPT='%{$fg_bold[green]%}%~${vcs_info_msg_0_} %{$fg[green]%}%#%{${reset_color}%} '
#RPROMPT=''


# Terminal emulator title

#autoload -Uz add-zsh-hook

#function xterm_title_precmd () {
#	print -Pn '\e]2;%n@%m %~\a'
#	[[ "$TERM" == 'screen'* ]] && print -Pn '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
#}
#
#function xterm_title_preexec () {
#	print -Pn '\e]2;%n@%m %~ %# ' && print -n "${(q)1}\a"
#	[[ "$TERM" == 'screen'* ]] && { print -Pn '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n "${(q)1}\e\\"; }
#}
#
#if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
#	add-zsh-hook -Uz precmd xterm_title_precmd
#	add-zsh-hook -Uz preexec xterm_title_preexec
#fi

