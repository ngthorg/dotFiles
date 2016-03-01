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
  $ [sudo] npm i -g eslint

  $ npm i babel-eslint eslint eslint-config-airbnb eslint-plugin-react
  ```

  Create a config like this in your project's `.eslintrc`, or do so globally by placing it in `~/.eslintrc`:

```
parser: 'babel-eslint'

plugins:
  - react

globals:
  __DEV__: true

ecmaFeatures:
  jsx: true
  experimentalObjectRestSpread: true

env:
  es6: true
  node: true
  browser: true

extends:
  - airbnb

rules:
  # Ignore Rules
  strict: 0
  indent: [ 2, 2, { SwitchCase: 1 } ]
  comma-dangle: [1, never]
  comma-style: [2, last]
  quotes: [2, single]
  linebreak-style: [2, unix]
  no-mixed-spaces-and-tabs: 2
  no-console: 1
  semi: [2, never]
  # airbnb
  space-after-keywords: [2, always]
  prefer-template: 0
  no-shadow: 0

  # Plugin rules
  react/display-name: 0
  react/forbid-prop-types: 0
  react/jsx-curly-spacing: [2, never]
  react/jsx-handler-names: 1
  react/jsx-indent-props: [2, 2]
  react/jsx-indent: [2, 2]
  react/jsx-key: 2
  react/jsx-max-props-per-line: [2, { maximum: 3 }]
  react/jsx-no-bind: 0
  react/jsx-no-duplicate-props: 2
  react/jsx-no-literals: 0
  react/jsx-no-undef: 2
  react/jsx-sort-prop-types: [1, { callbacksLast: true, ignoreCase: true }]
  react/jsx-uses-react: 2
  react/no-direct-mutation-state: 2
  react/no-is-mounted: 0
  react/no-multi-comp: 2
  react/react-in-jsx-scope: 2
```


## Tips
* You can use `Shift` + `i` to see hidden files



[Vundle]:http://github.com/VundleVim/Vundle.vim
[Vim]:http://www.vim.org
[Git]:http://git-scm.com
[Fonts]:http://github.com/powerline/fonts
[Markdown]:https://github.com/suan/vim-instant-markdown
[Syntastic-react]:https://github.com/jaxbot/syntastic-react


# Atom
