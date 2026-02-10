"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************

" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if WINDOWS()
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(data_dir . '/autoload/plug.vim')
  if !executable(curl_exists)
    echoerr 'You have to install curl or first install vim-plug yourself!'
    execute 'q!'
  endif
  echo 'Installing Vim-Plug...'
  echo ''
  silent exec '!' . curl_exists . ' -fLo ' . shellescape(data_dir . '/autoload/plug.vim') . ' --create-dirs https://github.com/junegunn/vim-plug/raw/master/plug.vim'
  let g:not_finish_vimplug = 'yes'

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Required:
call plug#begin(expand(data_dir . '/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************

" set runtimepath+=~/.config/nvim/plugins.d
"
" runtime git.vim
" runtime improvements.vim
" runtime languages.vim
" runtime project.vim
" runtime search.vim
" runtime ruby-language.vim
" runtime web.vim
" runtime appearance.vim

call lib#SourceDirectory('~/.config/nvim/plugins.d') " source all bundles under `plugins.d`

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand('~/.config/nvim/local_bundles.vim'))
  source ~/.config/nvim/local_bundles.vim
endif

call plug#end()

"*****************************************************************************
"*****************************************************************************
