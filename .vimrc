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
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nanotech/jellybeans.vim'
" Plugin 'gregsexton/MatchTag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jwalton512/vim-blade'
" Plugin 'ervandew/supertab'
" Plugin '2072/PHP-Indenting-for-VIm'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'jdkanani/vim-material-theme'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'eshion/vim-sync'
Plugin 'othree/html5.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'vim-scripts/vim-php-namespace'
Plugin 'craigemery/vim-autotag'
Plugin 'stephpy/vim-php-cs-fixer'

" PHP Docs and requireds
Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tobyS/pdv'


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
filetype plugin on
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


" Enable display line numbers
set number

" Map NerdTree on ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Syntax hilight
set t_Co=256
syntax enable
set background=dark
" colorscheme material-theme
colorscheme jellybeans
" colorscheme atom-dark-256

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Change default lider key
let mapleader=","


" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Use mouse like a boss
if has('mouse')
set mouse=a
endif

" Don't redraw while executing macros (good performance config)
set lazyredraw

set cursorline
set encoding=utf-8
set hlsearch

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" airline settings
let g:airline_powerline_fonts = 1

set wrap

" Better cursor muve on long lines
nmap j gj
nmap < DOWN> gj
nmap k gk
nmap < UP> gk

" Syntastic preference
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0

let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_php_checkers=['phpcs', 'php']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

autocmd Filetype php setlocal ts=4 sw=4 autoindent
autocmd Filetype php setlocal ts=4 sw=4 autoindent

autocmd Filetype html setlocal ts=2 sw=2 autoindent
autocmd Filetype css setlocal ts=2 sw=2 autoindent
autocmd Filetype scss setlocal ts=2 sw=2 autoindent
autocmd Filetype js setlocal ts=2 sw=2 autoindent

autocmd FileType apache setlocal commentstring=#\ %s
filetype indent on

" Display hiden files in nerdtree
let NERDTreeShowHidden=1

nmap <Leader>f :tag<space>

" set foldcolumn=1
" hi foldcolumn ctermbg=bg

let g:ag_working_path_mode="r"

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

inoremap <Leader>n <C-O>:call PhpInsertUse()<CR>
noremap <Leader>n :call PhpInsertUse()<CR>

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

" Ultisnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=mode_modules

