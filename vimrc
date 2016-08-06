""" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32') || has('win64')
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()  " required
filetype plugin indent on  " required

""" Rules
syntax on
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix
set textwidth=80
set ts=4 sw=4 sts=0
set expandtab
set smarttab
set backspace=indent,eol,start
set incsearch
set ignorecase
set smartcase
set ruler
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set number
set autoindent
set nosmartindent
set cindent
set clipboard=unnamedplus
set mouse=a
set ttymouse=xterm2
"" Like zsh complete
set wildmode=longest,list
"" 日本語の行の連結時には空白を入力しない。
set formatoptions+=mM
"" □や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double
"" 画面最後の行をできる限り表示する。
set display+=lastline
set statusline=\ %{&fileencoding}(%{&ff})%M%R%H%W\ \ %F%=
set statusline+=<%Y>\ (%0l/%L,%v)\ \(ASCII=\%03.3b\ Hex=\%02.2B\)
set laststatus=2
set foldmethod=indent
set foldlevel=99
set cursorline
set backupdir=~/.vim/bak
set directory=~/.vim/swp

"" apper space and tab
set lcs=tab:>.,trail:_,extends:\
if !(has('win32') || has('win64'))
    highlight SpecialKey cterm=NONE ctermfg=7 guifg=7
    highlight JpSpace cterm=underline ctermfg=7 guifg=7
endif
au BufRead,BufNew * match JpSpace /　/

""" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=ro

""" keymaps
nnoremap <Space> <Nop>
nnoremap Y y$

"" 検索語が画面の真ん中に来るように
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz
