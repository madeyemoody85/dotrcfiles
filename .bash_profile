if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:~/bin
export PATH

export GOPATH="/Users/nachiketlondhe/workspace"
PATH=$GOPATH:$PATH
export PATH

alias vim='mvim'
alias be='bundle exec'
alias test-guard='USE_SPRING=true be guard'
alias ff='find . -name'
alias gen-tags='ctags -R --languages=ruby --exclude=.git --exclude=.log . $(bundle list --paths)'
alias startDB='pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start'

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
