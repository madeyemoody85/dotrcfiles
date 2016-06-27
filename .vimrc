" Nachiket's Vim rc" backup the files to git

set nocompatible              " be iMproved, required
filetype off                  " required

" Installation for pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install Dash.vim used for Dash integration with Vim
Plugin 'rizzatti/dash.vim'

" Plugin for Ack.vim for integration with silver_searcher
Plugin 'mileszs/ack.vim'

" Plugin for vim-airline
Plugin 'vim-airline/vim-airline'

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
:nmap <silent> <leader>d <Plug>DashSearch

set runtimepath^=~/.vim/bundle/ctrlp.vim

colorscheme desert

" Replaces tabs by spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Show the line numbers
set number

set tags=tags;

" Enabled code folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set incsearch

" Set the NERDTree window size
let g:NERDTreeWinSize=50

" Set the silver searcher integration
let g:ackprg = 'ag --vimgrep'

" fix whitespace just before we write the buffer to a file
" save the cursor position
function! FixWhitespace()
    let l:save_cursor = getpos(".")
    silent! execute ':%s/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction
autocmd BufWritePre * :call FixWhitespace()

" " Key maps the new binding of the future

"" Map Leader
let mapleader=","

inoremap jk <esc>l

" Go to the tag
nnoremap <leader>. :CtrlPTag<cr>

"" Settings for vim-airline the buffer master

" To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" " Move to the next buffer
nmap <leader>l :bnext<CR>

" " Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

