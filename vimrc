"" Enigma Li Vim Config

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
""		Plugin Config
""""""""""""""""""""""""""""""""""""
if has("gui_running")
	"" Color Scheme Sonfig
	colorscheme spacevim

	"" Ctags Config
	set tags+=./tags;/

	"" Tagbar Config
	"" git clone https://github.com/majutsushi/tagbar.git
	autocmd VimEnter * nested :TagbarOpen
	let g:tagbar_left	= 1
	let g:tagbar_width	= 24
	let g:tagbar_indent = 0
	nmap <leader><F8> :TagbarToggle<CR>

	"" Vim-Airline Config
	"" git clone https://github.com/vim-airline/vim-airline.git
	"" git clone https://github.com/vim-airline/vim-airline-themes.git
	let g:airline_left_sep='▶'
	let g:airline_right_sep='◀'
	let g:airline_theme='raven'

	"" UltiSnips Config
	"" git clone https://github.com/SirVer/ultisnips.git
	"" git clone https://github.com/honza/vim-snippets.git
	let g:UltiSnipsExpandTrigger		="<tab>"
	let g:UltiSnipsListSnippets			="<c-tab>"
	let g:UltiSnipsJumpForwardTrigger	="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger	="<c-z>"
	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit			="normal"

	"" CtrlP Config
	"" git clone https://github.com/kien/ctrlp.vim.git
	let g:ctrlp_map = "<c-p>"
	let g:ctrlp_cmd = "CtrlP"
	let g:ctrlp_custom_ignore = "\v[\/]\.(git|hg|svn)$"
endif
