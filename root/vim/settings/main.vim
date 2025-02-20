" fix scriptencoding
scriptencoding utf-8

" ================ General Config ===================

set number                     " Line numbers are good
set relativenumber             " Relative line numbers
set nostartofline              " Keep the cursor on the same column
set backspace=indent,eol,start " Allow backspace in insert mode
set history=1000               " Store lots of :cmdline history
set showcmd                    " Show incomplete cmds down the bottom
set showmode                   " Show current mode down the bottom
set guicursor=a:blinkon0       " Disable cursor blink
set mouse+=a                   " Enable mouse
set visualbell                 " No sounds
set autoread                   " Reload files changed outside vim
set path=.,**                  " Search path for :find
set tags^=.git/tags

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" turn on syntax highlighting
syntax on

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowritebackup

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  if !isdirectory(expand('~').'/.cache/vim/backups')
    silent !mkdir -p ~/.cache/vim/backups > /dev/null 2>&1
  endif
  set undodir=~/.cache/vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent     " Minimal automatic indenting for any filetype.

" Tabs. May be overridden by autocmd rules
set tabstop=4      " Tab equal 4 spaces (default 8)
set shiftwidth=2   " Arrow function (>>) creates 2 spaces
set softtabstop=-2 " Number of spaces per Tab - negative, will use shiftwidth
set expandtab      " Use spaces instead of a tab charater on TAB
set shiftround     " Shift to the next round tab stop. Aka When at 3 spaces, hit >> to go to 4, not 5 if your shiftwidth is set to 2.

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
set listchars=tab:\ \ ,trail:·

set nowrap    " Don't wrap lines
set linebreak " Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent " fold based on indent
set foldnestmax=3     " deepest fold is 3 levels
set nofoldenable      " dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                      " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~       " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=6      " Start scrolling when we're 6 lines away from margins
set sidescrolloff=10
set sidescroll=1

" ================ Search ===========================

set incsearch  " Find the next match as we type the search
set hlsearch   " Highlight searches by default
set ignorecase " Ignore case when searching...
set smartcase  " ...unless we type a capital

" ================ Modelines ========================
set modeline
set modelines=3

