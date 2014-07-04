GIT_COMPLETION=$HOME/git/git-completion.bash
[[ -s $GIT_COMPLETION ]] && source $GIT_COMPLETION

if [ -s "$HOME/.rvm/bin/rvm-prompt" ]; then
  __rvm_ps1()
  {
    local r=`~/.rvm/bin/rvm-prompt`
    if [ -n "$r" ]; then
      printf " $r"
    fi
  }
fi

fn_exists()
{
  type $1 2>/dev/null | grep -q 'is a function'
}

PS1='\[\033[00;32m\][\u\[\033[0;31m\]@\[\033[01;32m\]\h:\[\033[01;31m\]\w'
if fn_exists "__rvm_ps1"; then
  PS1=$PS1'\[\033[0;36m\]$(__rvm_ps1)'
fi
if fn_exists "__git_ps1"; then
  PS1=$PS1'\[\033[01;33m\]$(__git_ps1 " %s")'
fi
PS1=$PS1'\[\033[00;32m\]]\n\$\[\033[00m\] '

[[ -s "$HOME/.bash_exports" ]] && . "$HOME/.bash_exports"
[[ -s "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"

if [ `which brew 2> /dev/null` ] && [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"


# vim:ft=sh:

alias "qa-cms= ssh cms@qa.vejasp.abril.com.br -p 5022"
alias "qa-vejasp= ssh vejaspnew@qa.vejasp.abril.com.br -p 5022"
alias "dev-vejasp= ssh vejaspnew@dev.vejasp.abril.com.br -p 5022"
alias "dev-cms= ssh cms@dev.vejasp.abril.com.br -p 5022"
alias "qa-search= ssh search@172.16.1.33 -p 5022"
 
alias "start_mongo= /Users/Danilo/mongodb/bin/mongod --dbpath /Users/Danilo/mongodb/db"
alias "mongo= /Users/Danilo/mongodb/bin/mongo"
 
alias "ubber_redis= cd ~/redis-2.4.14/ && src/redis-server redis_ubber.conf" 
alias "ubber_redis_open= cd ~/redis-2.4.14/ && src/redis-cli -p 16379" 
alias "redis= cd ~/redis-2.4.14/ && src/redis-server" 
alias "redis_open= cd ~/redis-2.4.14/ && src/redis-cli" 

alias "vejasp= cd ~/projects/vejasp_projetos/vejasp"
alias "vejario= cd ~/projects/vejasp_projetos/vejario"
alias "vw= cd ~/projects/vejasp_projetos/vejinhas-widgets"
alias "structure= cd ~/projects/vejasp_projetos/vejasp/structure"

alias "oracle_sql= cd ~/sqldeveloper && ./sqldeveloper.sh "

# alias "mysql= /opt/local/lib/mysql55/bin/mysql"

alias "gits= git status"

alias "apt-get= brew"



 
#export EDITOR=mate

#alias sublime='/usr/local/bin/sublime'

##
# Your previous /Users/Danilo/.bash_profile file was backed up as /Users/Danilo/.bash_profile.macports-saved_2012-11-22_at_09:37:24
##

# MacPorts Installer addition on 2012-11-22_at_09:37:24: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

