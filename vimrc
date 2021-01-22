" ======================================================================================= "
" 				 VIMRC CONFIG                                             "
"                                 Sean Wade 						  "
" ======================================================================================= "

set nocompatible              					    " be iMproved, required
filetype off                  					    " required

" -------VUNDLE----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 		" package manager
Plugin 'scrooloose/nerdtree' 		" awesome directory
Plugin 'Lokaltog/vim-powerline' 	" the line at the bottom
Plugin 'Yggdroot/indentLine' 		" shows indent lines
Plugin 'ctrlpvim/ctrlp.vim' 		" fuzzy searching 
Plugin 'scrooloose/nerdcommenter' 	" easy comments
Plugin 'chrisbra/csv.vim' 		" pretty csv files
Plugin 'danro/rename.vim' 		" adds :saveas x
Plugin 'Raimondi/delimitMate' 		" auto close brackets in insert mode
Plugin 'tpope/vim-surround' 		" change and add surrond chars easy
Plugin 'ervandew/supertab' 		" insert mode tab complete 
Plugin 'takac/vim-hardtime' 		" to better learn vim
" Plugin 'sheerun/vim-polyglot' 	" language pack
" Plugin 'mattn/emmet-vim' 		" HTML/CSS magic
" Plugin 'pangloss/vim-javascript' 	" make javascript nice
" Plugin 'vim-latex/vim-latex' 		" LaTex magic

call vundle#end() 

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

" trial settings
set path+=** " fuzy search
set wildmenu " display all tab complete

" misc
set showcmd

" file syntax
syntax on
filetype plugin indent on

" for mouse
set mouse=a

" relative line numbering
set number
set relativenumber

" better escape
inoremap jk <esc>

" copy and paste with TMUX
if $TMUX == ''
	set clipboard+=unnamed
endif

set pastetoggle=<F2>
set clipboard=unnamed

" remap the leader key
let mapleader=","

" easier moving between buffers
map <Leader>n <esc>:bp<CR>
map <Leader>m <esc>:bn<CR>

" map sort function
vnoremap <Leader>s :sort<CR>o

" moving code blocks
vnoremap < <gv
vnoremap > >gv

" history
set history=700
set undolevels=700

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" removes search highlight
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" --------Plugin Settings------------------------------------------------------------------

" Latex
let g:tex_conceal = "" " stops rendering latex inline
let g:tex_flavor='latex' " after vim 7 default .tex to plaintex, switches
set grepprg=grep\ -nH\ $*

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

" CSV
let b:csv_arrange_use_all_rows = 1

" supertab
" for use with omni complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt-=preview

" hard mode to better learn vim 
let g:hardtime_default_on = 0

