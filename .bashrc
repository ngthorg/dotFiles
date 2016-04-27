export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

function _update_ps1() {
  export PS1="$(~/powerline-shell.py $? 2> /dev/null) \n\r☀ ☞ "
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
