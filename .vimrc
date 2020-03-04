:let mapleader = ","
:let maplocalleader = "m"
execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set encoding=utf-8
set hlsearch
set incsearch
set number
set relativenumber
set wrap
set vb
set linebreak
set cursorline
set mousehide
set laststatus=2
set statusline=%t%m%r%h%w%=\ %Y\ %l,%v\ %p%%\ [%L]

" Cut, Copy, Paste with + registry
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>P "+P
noremap <Leader>d "+d

" Turn off search hightlight until next search
noremap <Leader>l :noh<CR>

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

" indent json files on save - needs jq in PATH
" autocmd FileType json autocmd BufWritePre <buffer> %!jq .

" NERDCOMMENTER Options

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

