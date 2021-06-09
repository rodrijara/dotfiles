
NEWLINE=$'\n'
PROMPT="%F{025}%n%f%F{241}@%m:%f %F{029}%~%f${NEWLINE}$ "
export HOST=$(hostname)

alias ll='ls -lF'
alias grep='grep -E'
alias sed='sed -E'

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# tab completion for git commands
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

[-f ~/.fzf.zsh ] && source ~/.fzf.zsh
