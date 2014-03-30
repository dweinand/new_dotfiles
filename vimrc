set nocompatible

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

set relativenumber

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

" Better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

filetype off

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
Bundle "jeffkreeftmeijer/vim-numbertoggle"
Bundle 'othree/html5.vim'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'mileszs/ack.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'itchyny/lightline.vim'
Bundle 'edkolev/promptline.vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'Blackrush/vim-gocode'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

" rspec syntax outside rails
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" via: http://vim.wikia.com/wiki/HTML_entities
function! HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

function! HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

map <silent> <Leader>he :call HtmlEscape()<CR>
map <silent> <Leader>hu :call HtmlUnEscape()<CR>

" set lightline theme
let g:lightline = {
      \ 'colorscheme': 'deedub',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:promptline_preset = {
      \ 'a'    : [ promptline#slices#user(), promptline#slices#host() ],
      \ 'b'    : [ promptline#slices#cwd() ],
      \ 'c'    : [ '${vcs_info_msg_0_}' ],
      \ 'warn' : [ promptline#slices#last_exit_code() ],
      \ 'y'    : [ '%T' ]
      \ }

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif
