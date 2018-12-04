"" Enigma Li Vim Config

""""""""""""""""""""""""""""""""""""
""		Editor Config
""""""""""""""""""""""""""""""""""""
"" Basic Config
set nocompatible
set nobackup
set nu
set ruler

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
"" Plug Ops
call plug#begin()
Plug 'dkprice/vim-easygrep'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'maralla/completor.vim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-editors/vim-elixir'
Plug 'scrooloose/nerdtree'
call plug#end()

"" Ctags Config
set tags+=./tags;/

"" EasyGrep Config
let g:EasyGrepJumpToMatch=0

"" UltiSnips Config
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
	set lines=73 columns=196
	set guioptions-=m
	set guioptions-=T
	set guioptions-=rL
	set encoding=utf-8

	"" Editor config
	set cursorline

	"" Font Size

	"" Color Scheme Config
	set background=dark
	colorscheme gruvbox

endif
