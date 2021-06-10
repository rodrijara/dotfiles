
# PROMT 
NEWLINE=$'\n'
PROMPT="%F{025}%n%f%F{241}@%m:%f %F{029}%~%f${NEWLINE}$ "

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
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
   runtmux 
  fi
}

ensure_tmux_is_running

# tab completion for GIT commands
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# GIT shortcuts
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}
# GIT aliases
alias add='git add'
alias commit='git commit -m'
alias branch='git checkout -b'
alias main='git checkout main'
alias push='git push origin'
alias pull='git pull origin'
alias unstage='git restore --staged'
