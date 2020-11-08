set nocompatible
filetype off


" Setup vim-plug
call plug#begin('~/.vim/plugged')

	" color theme
  Plug 'hzchirs/vim-material'
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'ap/vim-css-color'
  " File Explorer with Icons
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
  " File Search
	Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Utility
  Plug 'michaeljsmith/vim-indent-object'
	Plug 'preservim/tagbar'
	Plug 'suan/vim-instant-markdown'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'easymotion/vim-easymotion'
  Plug 'junegunn/goyo.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  " testing
  Plug 'vim-test/vim-test'
	" Utility Snippets
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'SirVer/ultisnips', { 'tag': '3.2' }
	Plug 'honza/vim-snippets'
  " Plug 'terryma/vim-multiple-cursors'
  " Javascript
  Plug 'pangloss/vim-javascript'
	Plug 'isRuslan/vim-es6'
	Plug 'heavenshell/vim-jsdoc'
	" React
	" Plug 'mxw/vim-jsx'
  Plug 'yuezk/vim-js'
  Plug 'chemzqm/vim-jsx-improve'
	Plug 'maxmellon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'
	Plug 'greg-js/vim-react-es6-snippets'
  " Html
  Plug 'mattn/emmet-vim'
	Plug 'rstacruz/sparkup'
	" git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	" Plug 'mhinz/vim-signify'
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
syntax on


" ==================== spaces and tabs ====================
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab number relativenumber cursorline
set showtabline=2
set regexpengine=0



" ==================== mouse ====================
set mouse=a


" ==================== front, color, theme ====================
" font & font size
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font:h11
" color
set t_Co=256
set termguicolors
set background=dark
" theme
colorscheme nord


" ==================== Autocmd ====================
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags


" ==================== vim-airline ====================
set laststatus=2
" set ttimeoutlen=50
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'
" let g:airline_theme='material'
let g:airline_left_sep=''
let g:airline_right_sep=''


" ==================== Nord ====================


" ==================== NERDTree ====================
" autocmd vimenter * NERDTree
let NERDTreeDirArrows  = 1
let NERDTreeShowHidden=1


" ==================== ctrlp.vim ====================
let g:ctrlp_working_path_mode = 'ra'
" https://github.com/kien/ctrlp.vim/issues/58#issuecomment-42743551
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }


" ==================== fzf.vim ====================
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ==================== vim-easymotion ====================


" ==================== tagbar ====================


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
" sudo npm i -g lehre
let g:jsdoc_lehre_path = '/usr/bin/lehre'


" ==================== vim-jsx ====================
let g:jsx_ext_required = 0


" ==================== vim-jsx-pretty ====================
" Colorful style (vim-javascript only)
let g:vim_jsx_pretty_colorful_config = 1


" ==================== emmet-vim ====================


" ==================== sparkup ====================
" sparkup/issues/139 in #139 support jsx
" autocmd FileType javascript.jsx runtime ftplugin/html/sparkup.vim


" ==================== vim-fugitive ====================


" ==================== vim-signify ====================
" set updatetime=100


" ==================== Syntastic ====================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers = ['go']
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
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-tsserver', 'coc-highlight', 'coc-snippets', 'coc-tabnine']


" ==================== Keymap ====================
"" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :NERDTreeFind<CR>
"" vim-easymotion next character search motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
"" vim-tagbar
nmap <F8> :TagbarToggle<CR>
"" vim-jsdoc
nmap <silent> <C-l> <Plug>(jsdoc)
"" vim-syntastic
nmap <C-z> :lfirst<CR>
"" vim-fzf
nnoremap <silent> <Leader><Space> :Files<CR>
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

