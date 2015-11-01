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

5. Set up [Syntastic-react]:

  ```
  $ [sudo] npm install -g eslint

  $ [sudo] npm install -g babel-eslint

  $ [sudo] npm install -g eslint-plugin-react
  ```

  Create a config like this in your project's `.eslintrc`, or do so globally by placing it in `~/.eslintrc`:

  ```
  {
    "parser": "babel-eslint",
    "env": {
      "browser": true,
      "node": true
    },
    "settings": {
      "ecmascript": 6,
      "jsx": true
    },
    "plugins": [
      "react"
    ],
    "rules": {
      "strict": 0,
      "quotes": 0,
      "no-unused-vars": 0,
      "camelcase": 0,
      "no-underscore-dangle": 0
    }
  }
  ```
  
  
## Tips
* You can use Shift + i to see hidden files



[Vundle]:http://github.com/VundleVim/Vundle.vim
[Vim]:http://www.vim.org
[Git]:http://git-scm.com
[Fonts]:http://github.com/powerline/fonts
[Markdown]:https://github.com/suan/vim-instant-markdown
[Syntastic-react]:https://github.com/jaxbot/syntastic-react
