set relativenumber                      "Line numbers
set autoread                    "Reload files changed outside vim



syntax on                       "turn on syntax highlighting

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set linebreak    "Wrap lines at convenient points

" Plugins
"pathogen plugin manager
execute pathogen#infect()
"nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
