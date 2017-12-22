#!/bin/bash

PS1='\[\e]0;\u@\h:\w\a\]\[\033[36m\](\@) \[\033[35m\][\h \W]\[\033[0m\]\$ '
PS3='\[\e]0;\u@\h:\w\a\][\u@\h \W$(__git_ps1 " (%s)")]\$ '

# allow everyone r/x permissions. only user has w permission
umask 022

bind -m vi-insert "\C-l":clear-screen
bind -m vi-command "\C-l":clear-screen
bind -m vi-insert "\C-p":

# disable empty tab auto-completion
shopt -s no_empty_cmd_completion

# when shell exits, append to ~/.bash_history instead of overwriting
shopt -s histappend

alias ls="ls --color=auto"

# fat fingers...
alias s="ls"

alias vims="vim -S"
alias vima="vim -c 'Vsp' -c 'Test'"

# repeat the last command
alias k="fc -s"

# kill the last ctrl+z'd process
alias kl="kill -9 %+"

# force UTF-8 encoding in tmux
alias tmux='tmux -u'

export GREP_OPTIONS="--color=auto --exclude-dir=build --exclude-dir=.git --exclude=Session.vim --exclude=.*.swp --exclude=debian/changelog"

[ -f ~/.surroundingEnvironment ] && . ~/.surroundingEnvironment
