execute pathogen#infect()
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" add colors to vim
Plug 'altercation/vim-colors-solarized'

" remove any trailing white spaces
Plug 'bronson/vim-trailing-whitespace'

" Silver Searcher
Plug 'rking/ag.vim'

" Git gutter
Plug 'airblade/vim-gitgutter'

" The aparent git defactor
Plug 'tpope/vim-fugitive'

" Airline
Plug 'vim-airline/vim-airline'

call plug#end()

" -- solarized personal conf
"  tell vim its ok to use 256 colors in terminal
set t_Co=256
set background=dark
colorscheme nachiket

" -- show the red 200th column in red on right
if (exists('+colorcolumn'))
	set colorcolumn=125
	highlight ColorColumn ctermbg=9
endif

" --- type ° to search the word in all files in the current dir
nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag

" Ctrl-p plugin settings
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ########## PERSONAL CONFIG #########

set nocompatible
set bs=2

set ruler
set hlsearch

" indentation and spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Enabled code folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" line number
set number

" ctags
set tags=tags;

" Map Leader
let mapleader=","

inoremap jk <esc>l

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>
