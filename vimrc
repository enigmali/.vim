"" Enigma Lee Vim Config

"" Basic Settings
set lines=72 columns=200
set nocompatible
set nu
set ruler
execute pathogen#infect()
syntax on
set confirm	"" confirm when then file is not saved
set cmdheight=2
set showmatch
set cursorline

set scrolloff=3
set showcmd
set laststatus=2

colorscheme jellybeans

"" Search Settings
set ignorecase smartcase
set hlsearch
set incsearch

"" Indent Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"" Ctags Config
set tags+=./tags;/
