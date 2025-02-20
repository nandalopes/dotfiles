let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

set statusline=
set statusline+=%#Visual#
set statusline+=\ %{toupper(g:currentmode[mode()])} 
set statusline+=%#StatusLine#
set statusline+=\ %F%m%r%h%w%=
set statusline+=%#WildMenu#
set statusline+=\ %y\ [%3l:%-3v]\ [%p%%\ -\ %L]
set statusline+=\ %#MatchParen#
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ 
