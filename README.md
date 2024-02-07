# Config dotfiles

## zsh

1. Set up [zsh]

2. Install [oh-my-zsh]

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install Plugins

  - [zsh-autosuggestions]

    ```zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    ```

  - [zsh-syntax-highlighting]

    ```zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    ```
## neovim
```zsh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim
```
## Alacritty
1. install Cargo
```zsh
curl https://sh.rustup.rs -sSf | sh
```
2. install alacritty
```
dnf install cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++
cargo install alacritty
```
3. Desktop Entry

Many Linux and BSD distributions support desktop entries for adding applications to system menus. This will install the desktop entry for Alacritty:
```
cd target/release/alacritty 
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```

## Fonts
- Install [nerdfonts]:


[zsh]: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
[zsh-autosuggestions]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[plug]: https://github.com/junegunn/vim-plug
[vim]: https://www.vim.org/
[nerdfonts]: https://www.nerdfonts.com/font-downloads
[markdown]: https://github.com/suan/vim-instant-markdown
[nerdtree]: https://github.com/preservim/nerdtree
