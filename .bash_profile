if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:~/bin
export PATH

alias bfy='cd /Users/nlondhe/backupify_parent/backupify'
alias be='bundle exec'
alias test-guard='USE_SPRING=true be guard'
alias ff='find . -name'
alias gen-tags='ctags -R --languages=ruby --exclude=.git --exclude=.log . $(bundle list --paths)'
alias startDB='pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start'

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

ssh-add -t 0 ~/.ssh/id_rsa &> /dev/null
#ssh-add -t 0 ~/.ssh/ldap_id_rsa &> /dev/null
#ssh-add -t 0 ~/.ec2_backupify/backupify.pem &> /dev/null
ssh-add -t 0 ~/.ec2_backupifydev/backupifydev.pem &> /dev/null

function ec2env {
  env=$1
  export EC2_KEYS_HOME=~/.ec2${env:+"_${env}"}
  export CHEF_CLIENT_KEY=~/.ssh/chef-${env}.pem
  source $EC2_KEYS_HOME/profile
}
ec2env backupifydev
