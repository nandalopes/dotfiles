" Automatically treat .m3u extension files as M3U
augroup vimrc-ft-m3u
  autocmd!
  autocmd BufRead *.m3u  set filetype=m3u commentstring=#\ %s
augroup END
