" ========================================
" Mac specific General vim sanity improvements
" ========================================
if !OSX()
  finish
endif

" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with apple-k or apple-d, and add Shift
" to type dashes
imap <silent> <D-k> _
imap <silent> <D-d> _
imap <silent> <D-K> -
imap <silent> <D-D> -

" Wrappings
vmap <D-j> gj
vmap <D-k> gk
vmap <D-$> g$
vmap <D-^> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-$> g$
nmap <D-^> g^
nmap <D-0> g^


" Change inside various enclosures with Cmd-" and Cmd-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <D-'> f'ci'
nnoremap <D-"> f"ci"
nnoremap <D-(> f(ci(
nnoremap <D-)> f)ci)
nnoremap <D-[> f[ci[
nnoremap <D-]> f]ci]

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> <D-j> }
nnoremap <silent> <D-k> {
augroup yadr-keymap-mac
  autocmd!
  autocmd FileType ruby map <buffer> <D-j> ]m
  autocmd FileType ruby map <buffer> <D-k> [m
  autocmd FileType rspec map <buffer> <D-j> }
  autocmd FileType rspec map <buffer> <D-k> {
  autocmd FileType javascript map <buffer> <D-k> }
  autocmd FileType javascript map <buffer> <D-j> {
augroup END

" Use numbers to pick the tab you want (like iTerm)
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

" Resize windows with arrow keys
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>

" ,hp = html preview
map <silent> <leader>hp :!open -a Safari %<CR><CR>

" Source current file Cmd-% (good for vim development)
map <D-%> :so %<CR>
