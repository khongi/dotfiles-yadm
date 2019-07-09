:let mapleader = ","
" execute pathogen#infect()
" execute pathogen#helptags()

set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set number
set relativenumber
set wrap
set vb
set linebreak
set cursorline
set mousehide
:set laststatus=2
set statusline=%t%m%r%h%w%=\ %Y\ %l,%v\ %p%%\ [%L]

" GUI options for when that's appropriate
set background=dark
" colorscheme evening
set guioptions-=T
set guioptions-=r
set guioptions-=m
set guifont=Fira\ Code:h16
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 16
  elseif has("gui_macvim")
    set guifont=Monaco:h16
  elseif has("gui_win32")
    set guifont=Consolas:h16:cANSI
  endif
endif

set splitbelow
set splitright
set wildmode=longest,list,full
set wildmenu
autocmd BufWritePre * %s/\s\+$//e

" Ali: to indent json files on save
autocmd FileType json autocmd BufWritePre <buffer> %!jq .

