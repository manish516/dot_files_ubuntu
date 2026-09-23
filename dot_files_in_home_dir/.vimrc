" Use spaces instead of tabs
set expandtab

" Be smart when using tabkey
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Enable filetype plugins
filetype plugin on
filetype indent on


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines



" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


" Needed for tmux and vim to play nice
nnoremap ^[OA <Up>
nnoremap ^[OB <Down>
nnoremap ^[OD <Left>
nnoremap ^[OC <Right>



" manish edit**************************************************************
set clipboard=unnamed

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash or `[tilda] as the leader key.
let mapleader = "`"

" Press \\ to jump back to the last cursor position.
"nnoremap <leader>\ ``
nnoremap <leader>2 $a
nnoremap <leader>1 0i
inoremap <leader><leader> <Esc>

nnoremap ] $
nnoremap [ 0
nnoremap ]\ v$
nnoremap \\ %

inoremap <leader><leader> <Esc>
nnoremap <leader>3 i<cr><esc>k$

nnoremap <leader>c :!javac %
nnoremap <leader>j :!java -cp %:p:h %:t:r

inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

" let g:netrw_winsize = 50

call pathogen#infect()
syntax on
filetype plugin indent on

nnoremap rr :NERDTreeRefresh<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif


" Type jj to exit insert mode quickly.
"inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
"nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap gv <C-v>

autocmd FileType * set formatoptions-=ro


call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
