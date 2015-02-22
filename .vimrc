"""""""""""""""""""""""""""
" Author:
" 		Arthur Sonzogni
"
" Version:
" 		1.5
"""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
" use pathogen to manage plugin "
"""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible

""""""""""""""
" Syntastic  "
""""""""""""""
let g:syntastic_mode_map = {"mode":"passive"}

nmap <C-c> :SyntasticCheck<CR>

""""""""""""""""""
" NerdTree       "
""""""""""""""""""

nmap <C-d> :NERDTreeToggle<CR>

" map jj to escape
imap jj <Esc>

" activate mouse control
set mouse=a

" display line number
set number


" auto indent
filetype plugin on
filetype indent on

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~

" Always show current position
set ruler

" don't annoy with case
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" syntax highlighting
if &t_Co >= 256 || has("gui_running")
colorscheme molokai
endif

if &t_Co > 2 || has("gui_running")
syntax on
endif

" setmart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4

autocmd FileType make setlocal noexpandtab


" Linebreak on 500 characters
"set lbr
"set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set laststatus=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" don't use arrow key in normal mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" don't use swap file and backup file
set nobackup
set noswapfile

" draw the command
set showcmd

" gray after 80 characters
" set textwidth=80
" let &colorcolumn=join(range(81,999),",")
" hi ColorColumn guibg=#2d2d2d ctermbg=236

set fileencoding=utf8

if filereadable(glob(".vim-local.vim"))
    source .vim-local.vim
endif

" copy and paste from the system clipboard
nmap <leader>y "+y 
nmap <leader>p "+p 

" visual shifting
vnoremap < <gv
vnoremap > >gv

" reload vimrc 
nmap <Leader>s :source $MYVIMRC
