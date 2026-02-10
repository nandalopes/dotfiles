if exists('b:did_ftplugin_gitcommit')
  finish
endif

let b:did_ftplugin_gitcommit = 1 " Don't load twice in one buffer

setlocal spell
