set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nanotech/jellybeans.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'vim-airline/vim-airline'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set number

map <C-n> :NERDTreeToggle<CR>

set t_Co=256
colorscheme jellybeans

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

let mapleader=","


" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" enhanced command completion
set wildmenu

set visualbell

if has('mouse')
set mouse=a
endif

" Don't redraw while executing macros (good performance config)
set lazyredraw

set cursorline
set hidden
set nofoldenable
"set modelines=0
"set clipboard=unnamed
"set synmaxcol=128
"set ttyscroll=10
"set encoding=utf-8
set colorcolumn=80
set tw=79
highlight ColorColumn ctermbg=225
set nowrap
set number
set hlsearch
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set autoindent
set expandtab
set noexpandtab
set softtabstop=2
set shiftwidth=2
set smarttab

