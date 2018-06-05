" ======================================================================================= "
" 				 VIMRC CONFIG                                             "
"                                 Sean Wade 						  "
" ======================================================================================= "

set nocompatible              					    " be iMproved, required
filetype off                  					    " required

" -------VUNDLE----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " package manager
Plugin 'joshdick/onedark.vim' " Colorscheme
Plugin 'scrooloose/nerdtree' " awesome directory
Plugin 'Lokaltog/vim-powerline' " the line at the bottom
Plugin 'sheerun/vim-polyglot' " Language pack
Plugin 'Yggdroot/indentLine' " shows indent lines
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy searching 
Plugin 'scrooloose/nerdcommenter' "easy comments
Plugin 'chrisbra/csv.vim' " pretty csv files
Plugin 'mattn/emmet-vim' " HTML/CSS magic
Plugin 'ervandew/supertab' " insert mode tab complete 
Plugin 'danro/rename.vim' " adds :saveas x
Plugin 'pangloss/vim-javascript' " make javascript nice
Plugin 'Raimondi/delimitMate' "auto close brackets in insert mode
Plugin 'vim-latex/vim-latex' " LaTex magic

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

set exrc
let &path.="src/include,/usr/include/AL,"

set number
filetype plugin indent on
set showcmd
set mouse=a
syntax on

" better escape
inoremap jk <esc>

" for qtcreator
map rr :run<CR>

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

" useful
set history=700
set undolevels=700

" search settings
" set hlsearch
set incsearch
set ignorecase
set smartcase

" removes search highlight
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" make blank lines in normal mode
nmap t o<ESC>k
nmap T O<ESC>j

" For colorscheme
colorscheme onedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Plugin Settings
" ===============================

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

" YouCompleteMe
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_auto_trigger = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1

" supertab
" for use with omni complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt-=preview
