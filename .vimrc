set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'L9'
	" color
	Plugin 'chriskempson/base16-vim'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'kristijanhusak/vim-hybrid-material'
	Plugin 'sickill/vim-monokai'
	Plugin 'fatih/molokai'
	Plugin 'ajh17/Spacegray.vim'
	" end color
	Plugin 'scrooloose/nerdtree'
	Plugin 'wincent/command-t'
	Plugin 'majutsushi/tagbar'
	Plugin 'bling/vim-airline'
	Plugin 'powerline/fonts'
	" Plugin 'itchyny/lightline.vim'
	Plugin 'mhinz/vim-signify'
	Plugin 'suan/vim-instant-markdown'
	" vim-snipmate start
	Plugin 'garbas/vim-snipmate'
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	" Optional:
	Plugin 'honza/vim-snippets'
	" vim-snipmate end
	Plugin 'pangloss/vim-javascript'
	Plugin 'isRuslan/vim-es6'
	Plugin 'rstacruz/sparkup'
	Plugin 'tomtom/tcomment_vim'
	Plugin 'heavenshell/vim-jsdoc'
	" git
	Plugin 'airblade/vim-gitgutter'
	" git end
	Plugin 'easymotion/vim-easymotion'
	Plugin 'scrooloose/syntastic'
	" go
	Plugin 'fatih/vim-go'
	Plugin 'garyburd/go-explorer'
	" React
	Plugin 'mxw/vim-jsx'
	Plugin 'jaxbot/syntastic-react'
	" Plugin 'justinj/vim-react-snippets'
	Plugin 'ngthorg/vim-react-es6-snippets'

call vundle#end()
filetype plugin indent on




set tabstop=2 shiftwidth=2 softtabstop=2 expandtab number
set regexpengine=1
syntax enable


" ==================== theme ====================
" font & font size
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
" set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h11
" color
set t_Co=256
set background=dark

" vim-colors-solarized
let g:solarized_termcolors=256
colorscheme solarized

" vim-hybrid-material
" let g:enable_bold_font = 1
" colorscheme hybrid_material
" colorscheme hybrid_reverse


" ==================== NERDTree ====================
" autocmd vimenter * NERDTree


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
set encoding=utf-8
set ttimeoutlen=50
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='solarized'
let g:airline_theme='bubblegum'
let g:airline_left_sep=''
let g:airline_right_sep=''

" bubblegum
" durant
" papercolor
" solarized

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
