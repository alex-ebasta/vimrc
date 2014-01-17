"pathogen config to load ~/.vim/bundle plugins
"execute pathogen#infect()

"-------------------
"VUNDLE config: 
"--------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"vundle git packages:
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'jiangmiao/auto-pairs'
Bundle 'majutsushi/tagbar'
Bundle 'walm/jshint.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'scrooloose/nerdtree.git'
Bundle 'bling/vim-airline'
"Bundle 'ervandew/supertab'
"Bundle 'msanders/snipmate.vim'


"indentation:
Bundle 'pangloss/vim-javascript'

"snippets for snipmate:
"Bundle 'mklabs/snipmate-css3-please'

"syntax plugins:
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'jQuery'

"End vundle config
"-----------------------

set autoindent
" autocomplete of javascript with ctrl-x ctrl-o
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" ignore case in searches
set ignorecase
set smarttab
set si
set tabstop=4     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set smartindent   " does the right thing (mostly) in programs
set wrap

syntax on 
set syn=auto 
set showmatch 
filetype off "chaged off for vundle 
filetype plugin on 
filetype indent on 
set softtabstop=4 

set nocompatible "vim settings instead of vi settins

" cursor at last edited position
autocmd BufReadPost *
	\ if line("'\"")>0 && line("'\"")<=line("$") |
	\ exe "normal! g'\""|
	\ endif

set viminfo^=%

" caratteri speciali:
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Highlight searches
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"Enable mouse in all modes
set mouse=a

set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Disable sounds
set vb t_vb="
set noerrorbells
set visualbell

"line numbers
set nu

"theme
set  t_Co=256
colorscheme desert


"PLUGINS ----------------
"tagbar plugin
nmap <F8> :TagbarToggle<CR>

"syntastic options
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

"f2 to open nerdtoggle
map <F2> :NERDTreeToggle<CR>

"supertab mapping"
let g:SuperTabMappingTabLiteral = '<tab>'
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"

"Powerline configuration:
set laststatus=2

