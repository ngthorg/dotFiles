# vim
My vim configuration

## Quick Start Install

1. Set up [Vundle]:

  `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Install Plugins:

  Launch `vim` and run `:PluginInstall`

  To install from command line: `vim +PluginInstall +qall`

3. Install [Fonts]:

  `$ cd ~/.vim/bundle/fonts/ && ./install.sh`

4. Set up [Markdown]:

  `$ [sudo] npm install -g instant-markdown-d`

## Tips
* You can use `Shift` + `i` to see hidden files



# Atom

### Backup packages
```
apm list --installed --bare > packages.list
```
### Install packages
```
apm install --packages-file packages.list
```
### Install config
```
cp config.cson ~/.atom/config.cson
```


[Vundle]:http://github.com/VundleVim/Vundle.vim
[Vim]:http://www.vim.org
[Git]:http://git-scm.com
[Fonts]:http://github.com/powerline/fonts
[Markdown]:https://github.com/suan/vim-instant-markdown
