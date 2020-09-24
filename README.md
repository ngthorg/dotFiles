# zsh

1. Set up [zsh]

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Install Plugins
- install plugin [zsh-autosuggestions]

```
$ git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
```

# vim
My vim configuration

## Quick Start Install

1. Set up [Plug]:

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Install Plugins:

  Launch `vim` and run `:PlugInstall`

  To install from command line: `vim +PlugInstall +qall`

3. Install [nerdfonts]:

  download and install fronts

4. Set up [Markdown] [Flow] [flow-language-server]:

  `$ [sudo] npm install -g instant-markdown-d flow-bin flow-language-server`

## Tips
* You can use `Shift` + `i` to see hidden files [NerdTree]



# Atom

### Backup packages
```
$ apm list --installed --bare > packages.list
```
### Install packages
```
$ apm install --packages-file packages.list
```
### Install config
```
$ cp config.cson ~/.atom/config.cson
```


[zsh]:https://github.com/ohmyzsh/ohmyzsh
[zsh-autosuggestions]:https://github.com/zsh-users/zsh-autosuggestions
[Plug]:https://github.com/junegunn/vim-plug
[Vim]:https://www.vim.org/
[Git]:https://git-scm.com
[nerdfonts]:https://www.nerdfonts.com/font-downloads
[Markdown]:https://github.com/suan/vim-instant-markdown
[Flow]:https://flow.org
[flow-language-server]:https://github.com/facebookarchive/flow-language-server
[NerdTree]:https://github.com/preservim/nerdtree
