" Author: @tony/vim-config-framework
" https://github.com/tony/vim-config-framework/blob/master/autoload/lib.vim

" fix scriptencoding
scriptencoding utf-8

" Environment {

    " Platform idenfitication {
        silent function! OSX() abort
            return has('macunix')
        endfunction
        silent function! LINUX() abort
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS() abort
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
        silent function! UNIXLIKE() abort
            return !WINDOWS()
        endfunction
        silent function! FREEBSD() abort
          let s:uname = system('uname -s')
          return (match(s:uname, 'FreeBSD') >= 0)
        endfunction
    " }

    " Basics {
        if !UNIXLIKE()
            set shell=/bin/sh
        endif
    " }
" }

" Function to source only if file exists {
function! lib#SourceIfExists(file) abort
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }

" Function to source all .vim files in directory {
function! lib#SourceDirectory(file) abort
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction
" }

function! lib#ColorSchemeExists(colorscheme) abort
  try
      exe 'colorscheme' a:colorscheme
      return 1
  catch /^Vim\%((\a\+)\)\=:E185/
      return 0
  endtry
endfunction

" http://vimcasts.org/episodes/soft-wrapping-text/
function! lib#setupWrapping() abort
  set wrap linebreak " breakindent, must fix shift break or similar
  set textwidth=80
  " Good chars for the job: … ↳ ⭞ 🡶
  set showbreak=↳
endfunction
