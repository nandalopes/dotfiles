" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vim-plug plugin manager.
" Once you've updated the list of plugin, you can run update by issuing
" the command :PlugInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim -es -u ~/.vimrc -i NONE -c 'PlugClean!' -c 'PlugInstall!' -c 'qa'

" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . data_dir . '/autoload/plug.vim --create-dirs https://github.com/junegunn/vim-plug/raw/master/plug.vim'
  autocmd VimEnter * ++once PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugged')

" YADR's vundles are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/plugins.d/ to edit them:
set runtimepath+=~/.vim/plugins.d "Submodules

runtime ruby.vim
runtime languages.vim
runtime git.vim
runtime appearance.vim
runtime textobjects.vim
runtime search.vim
runtime project.vim
runtime improvements.vim

" call lib#SourceDirectory('~/.vim/plugins.d') " source all bundles under `plugins.d`

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
call lib#SourceIfExists('~/.vim/.vundles.local')

call plug#end()
