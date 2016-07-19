" ======================================================================================= "
" 				 VIMRC CONFIG                                             "
"                                 Sean Wade 						  "
" ======================================================================================= "

set nocompatible              					    " be iMproved, required
filetype off                  					    " required

" -------VUNDLE----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'danro/rename.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'

call vundle#end() 
filetype plugin indent on    

" required
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
" ------------------------------------------------------------------------------------------

set number
filetype plugin on
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on
set showcmd
set mouse=a
syntax on

" better escape
inoremap jk <esc>

" copy and paste
set clipboard=unnamed
set pastetoggle=<F2>

" remap the leader key
let mapleader=","

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function
vnoremap <Leader>s :sort<CR>o

" moving code blocks
vnoremap < <gv
vnoremap > >gv

" useful
set history=700
set undolevels=700

" search settings
" set hlsearch
set incsearch
set ignorecase
set smartcase

" removes search highlight
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" make blank lines in normal mode
nmap t o<ESC>k
nmap T O<ESC>j

" Plugin Settings
" ===============================

" NerdTree
let NERDTreeQuitOnOpen = 1

" Powerline
set laststatus=2

" Indentline
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'

" Ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" YouCompleteMe
" let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
" let g:ycm_server_keep_logfiles = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1

" supertab
" for use with omni complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
