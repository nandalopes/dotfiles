" Modularized vimfiles...
let g:custom_vimfiles_dir = '~/.config/nvim'


" Custom Settings: BEFORE
call lib#SourceDirectory( expand( g:custom_vimfiles_dir ) . '/settings/before' )
" source ~/.vimrc.before if it exists. It is intended to allow overriding <Leader>.
call lib#SourceIfExists( '~/.vimrc.before' )


" Plugins Installation
call lib#SourceIfExists( expand( g:custom_vimfiles_dir ) . '/load_plugins.vim' )


" Main Settings & Plugins Configuration
call lib#SourceDirectory( expand( g:custom_vimfiles_dir ) . '/settings' )


" Custom Settings: AFTER
call lib#SourceDirectory( expand( g:custom_vimfiles_dir ) . '/settings/after' )

" This loads after the yadr plugins so that plugin mappings can be overwritten.
call lib#SourceDirectory( expand( g:custom_vimfiles_dir ) . '/after' )
call lib#SourceIfExists( '~/.vimrc.after' )
