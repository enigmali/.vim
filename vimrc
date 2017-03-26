"" Enigma Li Vim Config

""""""""""""""""""""""""""""""""""""
""		Editor Config
""""""""""""""""""""""""""""""""""""
"" Basic Config
set nocompatible
set nobackup
set nu
set ruler

"" Pathogen Config
"" git clone https://github.com/tpope/vim-pathogen.git
execute pathogen#infect()

syntax on
set confirm
set cmdheight=2
set showmatch

set scrolloff=3
set showcmd
set laststatus=2

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

"" Key Binding
let mapleader=" "

nmap <C-Tab>	:bn<CR>
nmap <C-S-Tab>	:bp<CR>
nmap <C-K>		:bd<CR>
nmap <C-S-L>	:ls<CR>


""""""""""""""""""""""""""""""""""""
""		GUI && Plugin Config
""""""""""""""""""""""""""""""""""""
"" Ctags Config
set tags+=./tags;/

"" EasyGrep Config
"" git clone https://github.com/dkprice/vim-easygrep.git
"" let g:EasyGrepOpenWindowOnMatch=1
let g:EasyGrepJumpToMatch=0

"" UltiSnips Config
"" git clone https://github.com/SirVer/ultisnips.git
"" git clone https://github.com/honza/vim-snippets.git
let g:UltiSnipsExpandTrigger		="<tab>"
let g:UltiSnipsListSnippets			="<c-tab>"
let g:UltiSnipsJumpForwardTrigger	="<c-b>"
let g:UltiSnipsJumpBackwardTrigger	="<c-z>"
"" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit			="normal"

"" CtrlP Config
"" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_map = "<c-p>"
let g:ctrlp_cmd = "CtrlP"
let g:ctrlp_custom_ignore = "\v[\/]\.(git|hg|svn)$"


if has("gui_running")
	"" Window Config
	set lines=73 columns=196 "" Full Screen
	set guioptions-=m
	set guioptions-=T
	set guioptions-=rL

	"" Editor config
	set cursorline
	
	"" Color Scheme Sonfig
	colorscheme spacevim
	
	"" Vim-Airline Config
	"" git clone https://github.com/vim-airline/vim-airline.git
	"" git clone https://github.com/vim-airline/vim-airline-themes.git
	let g:airline_left_sep='▶'
	let g:airline_right_sep='◀'
	let g:airline_theme='raven'

	else
	"" Turn of vim-airline
	let g:loaded_airline = 1 
endif
