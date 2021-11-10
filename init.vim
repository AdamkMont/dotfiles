set nocompatible
filetype off                  " required
filetype indent on
syntax on



call plug#begin()

Plug 'nightsense/stellarized'
Plug 'lervag/vimtex'

call plug#end()

set background=dark
colorscheme stellarized

set expandtab
set number relativenumber "show side numbers
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline "highlight current line
set showmatch "show matching brackets/parentheses
set incsearch " Find as you type search
set hlsearch
set ignorecase
set wildmenu "show list instead of just completing
set wrap


set showcmd "show command in bottom bar"

let mapleader =" "


set wildmode=longest,list,full " Enable autocompletion

set splitbelow splitright "Splits open at the bottom and right

"shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_latexmk = {
    \ 'executable' : 'latexmk',
    \ 'options' : [ 
    \   '-xelatex',
    \]
    \}
