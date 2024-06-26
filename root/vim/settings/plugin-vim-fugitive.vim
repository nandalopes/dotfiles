" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> <leader>dg :diffget<CR>
nnoremap <silent> <leader>dp :diffput<CR>

" Open fugitive git status
nnoremap <silent> <leader>gs :Git<CR>

augroup vimrc-plugin-fugitive
  autocmd!
  " The tree buffer makes it easy to drill down through the directories of your
  " git repository, but it’s not obvious how you could go up a level to the
  " parent directory. Here’s a mapping of .. to the above command, but
  " only for buffers containing a git blob or tree
  autocmd User fugitive
    \ if get(b:, 'fugitive_type', '') =~# '^\%(tree\|blob\)$' |
    \   nnoremap <buffer> .. :edit %:h<CR> |
    \ endif

  " Every time you open a git object using fugitive it creates a new buffer.
  " This means that your buffer listing can quickly become swamped with
  " fugitive buffers. This prevents this from becomming an issue:
  autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END


"" Git
noremap <Leader>ga  <Cmd>Gwrite<CR>
noremap <Leader>gA  <Cmd>Gwrite!<CR>
noremap <Leader>gc  <Cmd>Git commit --verbose<CR>
noremap <Leader>gsh <Cmd>Git push<CR>
noremap <Leader>gll <Cmd>Git pull<CR>
noremap <Leader>gs  <Cmd>topleft Git<CR>
noremap <Leader>gb  <Cmd>Git blame<CR>
noremap <Leader>gd  <Cmd>Gvdiffsplit<CR>
noremap <Leader>gr  <Cmd>GRemove<CR>

