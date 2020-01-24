set nocompatible
filetype off


" Setup vim-plug
call plug#begin('~/.vim/plugged')

	" color theme
  Plug 'hzchirs/vim-material'
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  " File Explorer with Icons
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
  " File Search
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'wincent/command-t'
  " suggestions
  " Utility
	Plug 'majutsushi/tagbar'
	Plug 'mhinz/vim-signify'
	Plug 'suan/vim-instant-markdown'
	Plug 'tomtom/tcomment_vim'
	Plug 'easymotion/vim-easymotion'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" vim-snipmate start
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'honza/vim-snippets'
  " Javascript
	Plug 'pangloss/vim-javascript'
	Plug 'isRuslan/vim-es6'
	Plug 'heavenshell/vim-jsdoc'
  " Html
	Plug 'rstacruz/sparkup'
	" git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	" Syntax
	Plug 'scrooloose/syntastic'
	Plug 'sheerun/vim-polyglot'
	Plug 'dense-analysis/ale'
	" go
	Plug 'fatih/vim-go'
	Plug 'garyburd/go-explorer'
	" React
	Plug 'mxw/vim-jsx'
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'ngthorg/vim-react-es6-snippets'

" Initialize plugin system
call plug#end()



set tabstop=2 shiftwidth=2 softtabstop=2 expandtab number
set regexpengine=1
syntax on


" ==================== front, color, theme ====================
" font & font size
set encoding=UTF-8
set guifont=Droid\ Sans\ Mono\ Nerd\ Front:h11
" color
set t_Co=256
set background=dark
" theme
colorscheme nord
" colorscheme vim-material


" ==================== Nord ====================


" ==================== NERDTree ====================
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1


" ==================== Autocmd ====================
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags


" ==================== Syntastic ====================
" let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'


" ==================== vim-fugitive ====================
autocmd QuickFixCmdPost *grep* cwindow


" ==================== vim-snipmate ====================
let g:snipMate = {}
let g:snipMate.scope_aliases = {}


" ==================== vim-airline ====================
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='nord'
let g:airline_theme='material'
let g:airline_left_sep=''
let g:airline_right_sep=''


" ==================== vim-jsx ====================
let g:jsx_ext_required = 0


" ==================== vim-javascript ====================
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"


" ==================== vim-jsdoc ====================
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return = 1
let g:jsdoc_return_type = 1
let g:jsdoc_return_description = 1
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_param_description_separator = ''
let g:jsdoc_enable_es6 = 1


" ==================== vim-go ====================
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" ==================== vim-easymotion ====================
" n-character search motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" ==================== Keymap ====================
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>


" ==================== Ale Linter ====================
" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
" Equivalent to the above.
let b:ale_linters = {'javascript': ['eslint']}


" ==================== Vim jsx pretty ====================
" Colorful style (vim-javascript only)
let g:vim_jsx_pretty_disable_tsx = 0
let g:vim_jsx_pretty_template_tags = ['html', 'jsx']
let g:vim_jsx_pretty_highlight_close_tag = 0
let g:vim_jsx_pretty_colorful_config = 1



" ==================== coc ====================
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
