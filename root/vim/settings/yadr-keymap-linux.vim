" ========================================
" Linux specific General vim sanity improvements
" ========================================
if !LINUX()
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
" underscores with Alt-k or Alt-d, and add Shift
" to type dashes
imap <silent> <A-k> _
imap <silent> <A-d> _
imap <silent> <A-K> -
imap <silent> <A-D> -

" Wrappings
vmap <A-j> gj
vmap <A-k> gk
vmap <A-$> g$
vmap <A-^> g^
vmap <A-0> g^
nmap <A-j> gj
nmap <A-k> gk
nmap <A-$> g$
nmap <A-^> g^
nmap <A-0> g^


" Change inside various enclosures with Alt-" and Alt-'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap <A-'> f'ci'
nnoremap <A-"> f"ci"
nnoremap <A-(> f(ci(
nnoremap <A-)> f)ci)
nnoremap <A-[> f[ci[
nnoremap <A-]> f]ci]

" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap \' f'ci'
nnoremap \" f"ci"
nnoremap \( f(ci(
nnoremap \) f)ci)
nnoremap \[ f[ci[
nnoremap \] f]ci]

" move up/down quickly by using Alt-j, Alt-k
" which will move us around by functions
nnoremap <silent> <A-j> }
nnoremap <silent> <A-k> {
augroup yadr-keymap-linux
  autocmd!
  autocmd FileType ruby map <buffer> <A-j> ]m
  autocmd FileType ruby map <buffer> <A-k> [m
  autocmd FileType rspec map <buffer> <A-j> }
  autocmd FileType rspec map <buffer> <A-k> {
  autocmd FileType javascript map <buffer> <A-k> }
  autocmd FileType javascript map <buffer> <A-j> {
augroup END

" Use Alt- numbers to pick the tab you want
map <silent> <A-1> :tabn 1<cr>
map <silent> <A-2> :tabn 2<cr>
map <silent> <A-3> :tabn 3<cr>
map <silent> <A-4> :tabn 4<cr>
map <silent> <A-5> :tabn 5<cr>
map <silent> <A-6> :tabn 6<cr>
map <silent> <A-7> :tabn 7<cr>
map <silent> <A-8> :tabn 8<cr>
map <silent> <A-9> :tabn 9<cr>
" Use ,t numbers to pick the tab you want
map <silent> <Leader>t1 :tabn 1<cr>
map <silent> <Leader>t2 :tabn 2<cr>
map <silent> <Leader>t3 :tabn 3<cr>
map <silent> <Leader>t4 :tabn 4<cr>
map <silent> <Leader>t5 :tabn 5<cr>
map <silent> <Leader>t6 :tabn 6<cr>
map <silent> <Leader>t7 :tabn 7<cr>
map <silent> <Leader>t8 :tabn 8<cr>
map <silent> <Leader>t9 :tabn 9<cr>

" Resize windows with arrow keys
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>

" ,hp = html preview
map <silent> <leader>hp :!xdg-open %<CR><CR>

" Source current file Alt-% (good for vim development)
map <A-%> :so %<CR>
