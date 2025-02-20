" Ignore Mappings:
" let g:vimtex_mappings_enabled = 0

" Error Suppression:
" https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
let g:vimtex_log_ignore = [
  \ 'Underfull',
  \ 'Overfull',
  \ 'specifier changed to',
  \ 'Token not allowed in a PDF string',
  \ ]
let g:vimtex_quickfix_mode = 0

" PDF Viewer:
" http://manpages.ubuntu.com/manpages/focal/man5/zathurarc.5.html
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_zathura_options = '--unique file:@pdf\#src:@line@tex'
