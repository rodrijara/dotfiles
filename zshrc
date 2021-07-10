
# GLOBAL variables
# export HOST=$(hostname)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# ls colors: https://gist.github.com/zanshin/4848f55ef103ac039531
CLICOLOR=1 # enable
# Order:
# 1. directory, 2. symbolic link, 3. socket, 4. pipe, 5. executable, 6. block special, 7. character special
# 8. executabel with setuid bit set, 9. executable with setgid bit set, 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit
#
# Colors
# a - black, b - red, c - green, d - brown (yellow), e - blue, f - magenta, g - cyan, h - light grey
# A - Bold black, B - Bold red, C - Bold green, D - Bold brown (yellow), E - Bold blue, F - Bold Magenta, G - Bold cyan,
# H - Bold light grey (appears bright white), x - default color
export CLICOLOR LSCOLORS=gxfxcxdxbxegedabagacad

export GREP_COLOR='38;5;35'

# ALIASES
alias runtmux='~/repos/dotfiles/runtmux'
alias reload='source ~/.zshrc'
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
zstyle ':vcs_info:git:*' formats '[ @%b ]'

# set prompt with branch info
setopt PROMPT_SUBST
#PROMPT="%F{025}%n%f %F{241}@ %m:%f %F{029}%~%f${NEWLINE}$ "
PROMPT="%F{025}%n%f%F{241} %m%f %F{029}%~%f $ "

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
