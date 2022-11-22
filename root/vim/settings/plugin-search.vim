function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction


if executable('rg')
  " ripgrep

  "grep the current word using ,k (mnemonic Kurrent)
  nnoremap <silent> <leader>k :execute "Rg " . expand("<cword>")<CR>

  "grep visual selection
  vnoremap <leader>k :<C-U>execute "Rg " . GetVisual()<CR>

  "grep current word up to the next exclamation point using ,K
  nnoremap <leader>K viwf!:<C-U>execute "Rg " . GetVisual()<CR>

  "grep for 'def foo'
  nnoremap <silent> <leader>ggd :execute "Rg def " . expand("<cword>")<CR>

  ",gg = Grep! - using RipGrep
  " open up a grep line, with a quote started for the search
  nnoremap <leader>gg :Rg 

  "Grep for usages of the current file
  nnoremap <leader>gcf :exec "Rg " . expand("%:t:r")<CR>

  " RipGrep for the last search.
  nnoremap <silent> <leader>qa/ :execute "Rg! " . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "")<CR>

elseif executable('ag')
  " The Silver Searcher

  "grep the current word using ,k (mnemonic Kurrent)
  nnoremap <silent> <leader>k :execute "Ag " . expand("<cword>")<CR>

  "grep visual selection
  vnoremap <leader>k :<C-U>execute "Ag " . GetVisual()<CR>

  "grep current word up to the next exclamation point using ,K
  nnoremap <leader>K viwf!:<C-U>execute "Ag " . GetVisual()<CR>

  "grep for 'def foo'
  nnoremap <silent> <leader>ggd :execute "Ag def " . expand("<cword>")<CR>

  ",gg = Grep! - using Ag the silver searcher
  " open up a grep line, with a quote started for the search
  nnoremap <leader>gg :Ag 

  "Grep for usages of the current file
  nnoremap <leader>gcf :exec "Ag " . expand("%:t:r")<CR>

  " Ag for the last search.
  nnoremap <silent> <leader>qa/ :execute "Ag! " . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "")<CR>
endif
