set nocompatible
filetype off

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let mapleader = ","

map ; :
noremap ;; ;

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set number

set clipboard=unnamed

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
	set hlsearch
endif

" if exists('+colorcolumn')
" 	set colorcolumn=80
" else
" 	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

" Switch wrap off for everything
set nowrap

autocmd vimenter * if !argc() | NERDTree | endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'wincent/Command-T'
Bundle 'wgibbs/vim-irblack'
Bundle 'AndrewRadev/switch.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tcomment_vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'slim-template/vim-slim'
Bundle "garbas/vim-snipmate"

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
