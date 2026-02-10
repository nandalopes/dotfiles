" Don't highlight cursor line number
highlight! link CursorLineNr LineNr

" Hide ~ for blank lines
" highlight! NonText guifg=bg

" Highlight VCS conflict markers
syntax match ErrorMsg /\v^(\<|\=|\>){7}([^=].+)?$/

