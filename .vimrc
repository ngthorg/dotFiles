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
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicos'
  " File Search
	Plug 'kien/ctrlp.vim'
	Plug 'wincent/command-t'
  " Utility
	Plug 'majutsushi/tagbar'
	Plug 'suan/vim-instant-markdown'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'easymotion/vim-easymotion'
  Plug 'junegunn/goyo.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Utility Snippets
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'SirVer/ultisnips', { 'tag': '3.2' }
	Plug 'honza/vim-snippets'
  " Javascript
	Plug 'pangloss/vim-javascript'
	Plug 'isRuslan/vim-es6'
	Plug 'heavenshell/vim-jsdoc'
	" React
	Plug 'mxw/vim-jsx'
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'greg-js/vim-react-es6-snippets'
  " Html
  Plug 'mattn/emmet-vim'
	Plug 'rstacruz/sparkup'
	" git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'mhinz/vim-signify'
	" Syntax
	Plug 'vim-syntastic/syntastic'
	Plug 'sheerun/vim-polyglot'
	" Plug 'dense-analysis/ale'
	" go
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'garyburd/go-explorer'

" Initialize plugin system
call plug#end()

filetype plugin indent on


" ==================== spaces and tabs ====================
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab number
set regexpengine=1
syntax on


" ==================== front, color, theme ====================
" font & font size
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font:h11
" color
set t_Co=256
set background=dark
" theme
colorscheme nord


" ==================== Autocmd ====================
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags


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


" ==================== Nord ====================


" ==================== NERDTree ====================
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :NERDTreeFind<CR>


" ==================== vim-easymotion ====================
" next character search motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" ==================== tagbar ====================
nmap <F8> :TagbarToggle<CR>


" ==================== UltiSnips ====================
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


" ==================== vim-snipmate ====================
let g:snipMate = {}
let g:snipMate.scope_aliases = {}


" ==================== vim-javascript ====================
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
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
nmap <silent> <C-l> <Plug>(jsdoc)


" ==================== vim-jsx ====================
let g:jsx_ext_required = 0


" ==================== vim-jsx-pretty ====================
" Colorful style (vim-javascript only)
let g:vim_jsx_pretty_colorful_config = 1


" ==================== emmet-vim ====================


" ==================== sparkup ====================
" sparkup/issues/139 in #139 support jsx
autocmd FileType javascript.jsx runtime ftplugin/html/sparkup.vim


" ==================== vim-fugitive ====================


" ==================== vim-signify ====================
set updatetime=100


" ==================== Syntastic ====================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint', 'flow', 'flow-language-server']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ==================== vim-go ====================
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" ==================== Ale Linter ====================
" " Enable ESLint only for JavaScript.
" let b:ale_linters = ['eslint']
" " Equivalent to the above.
" let b:ale_linters = {'javascript': ['eslint', 'flow', 'flow-language-server']}


" ==================== coc ====================
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-flow', 'coc-tsserver', 'coc-highlight', 'coc-snippets', 'coc-tabnine']


" ==================== Keymap ====================

