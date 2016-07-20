export PATH="/Users/unix/mongodb/bin:$PATH"
export CLICOLOR=1
# export LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS=ExFxCxDxBxegedabagacad

# goPath
export GOPATH=/Users/unix/go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# powerline-shell
function _update_ps1() {
  export PS1="$(~/powerline-shell.py $? 2>> /dev/null) \n☀ ツ☞  "
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
