"" Enigma Lee Vim Config

""""""""""""""""""""""""""""""""""""
""		Editor Config
""""""""""""""""""""""""""""""""""""
"" Basic Config
set lines=60 columns=160
set guioptions-=m
set guioptions-=T
set guioptions-=rL
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
"" colorscheme jellybeans
"" git clone https://github.com/morhetz/gruvbox.git
colorscheme gruvbox
set background=dark

"" Search Config
set ignorecase smartcase
set hlsearch
set incsearch

"" Indent Config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin on



""""""""""""""""""""""""""""""""""""
""		Plugin Config
""""""""""""""""""""""""""""""""""""
"" Ctags Config
set tags+=./tags;/

"" Tagbar Config
"" git clone https://github.com/majutsushi/tagbar.git
"" git clone https://github.com/dkprice/vim-easygrep.git
nmap <leader><F8> :TagbarToggle<CR>

"" Vim-Airline Config
"" git clone https://github.com/vim-airline/vim-airline.git
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
