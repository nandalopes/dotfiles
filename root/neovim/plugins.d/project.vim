"" Folder navigation
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

"" Tag management/navigation
Plug 'ludovicchabant/vim-gutentags' " Append/update tags
" Plug 'majutsushi/tagbar' " Navigate tags

"" Fuzzy finder
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
endif

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Search
" Plug 'vim-scripts/grep.vim'
Plug 'google/vim-searchindex'
Plug 'bronson/vim-visual-star-search'
" Plug 'yegappan/greplace'
