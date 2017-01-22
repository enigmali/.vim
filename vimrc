"" Enigma Lee Vim Config

""""""""""""""""""""""""""""""""""""
""		Editor Config
""""""""""""""""""""""""""""""""""""
"" Basic Config
if has("gui_running")
	set lines=99 columns=300 "" Full Screen
	set guioptions-=m
	set guioptions-=T
	set guioptions-=rL
endif

set nocompatible
set nobackup
set nu
set ruler
let mapleader=" "

"" git clone https://github.com/tpope/vim-pathogen.git
execute pathogen#infect()

syntax on
set confirm
set cmdheight=2
set showmatch
set cursorline

set scrolloff=3
set showcmd
set laststatus=2

"" git clone https://github.com/nanotech/jellybeans.vim.git
colorscheme jellybeans
"" git clone https://github.com/morhetz/gruvbox.git
"" colorscheme gruvbox
"" set background=dark

"" Search Config
set ignorecase smartcase
set hlsearch
set incsearch

"" Indent Config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
set autoindent
set smartindent



""""""""""""""""""""""""""""""""""""
""		Plugin Config
""""""""""""""""""""""""""""""""""""
"" Ctags Config
set tags+=./tags;/

"" Tagbar Config
"" git clone https://github.com/majutsushi/tagbar.git
nmap <leader><F8> :TagbarToggle<CR>

"" git clone https://github.com/dkprice/vim-easygrep.git

"" Vim-Airline Config
"" git clone https://github.com/vim-airline/vim-airline.git
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_theme='raven'

"" UltiSnips Config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="normal"
