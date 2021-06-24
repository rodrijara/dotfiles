
# GLOBAL variables
export HOST=$(hostname)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export GREP_COLOR='38;5;35'

# ALIASES
alias runtmux='~/repos/dotfiles/runtmux'
alias so='source ~/.zshrc'
alias ll='ls -lF'
alias grep='grep --color=auto -E'
alias sed='sed -E'

# command line finder https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TMUX Integration functions
# _not_inside_tmux() { [[ -z "$TMUX" ]] }

# ensure_tmux_is_running() {
#   if _not_inside_tmux; then
#    runtmux 
#   fi
# }

# ensure_tmux_is_running

# tab completion for GIT commands
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() { vcs_info }


autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'


# format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[ on %b ]'

# set prompt with branch info
setopt PROMPT_SUBST
#PROMPT="%F{025}%n%f %F{241}@ %m:%f %F{029}%~%f${NEWLINE}$ "
PROMPT="%F{025}%n%f%F{241}@%m:%f %F{029}%~%f
$ "

# GIT shortcuts
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
  export PROMPT
}
# GIT aliases
alias gadd='git add'
alias gcommit='git commit -m'
alias gbranch='git checkout -b'
alias gmain='git checkout main'
alias gpush='git push origin'
alias gpull='git pull origin'
alias gunstage='git restore --staged'
