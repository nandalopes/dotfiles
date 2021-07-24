" ============================
" Tabularize - alignment
" ============================
if LINUX()
  " Hit Alt-Shift-A then type a character you want to align by
  nmap <A-A> :Tabularize /
  vmap <A-A> :Tabularize /
elseif OSX()
  " Hit Cmd-Shift-A then type a character you want to align by
  nmap <D-A> :Tabularize /
  vmap <D-A> :Tabularize /
endif

