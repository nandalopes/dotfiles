" ========================================
" General vim sanity improvements
" ========================================
"
"
" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap <leader>yw yiww

" ,ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap <leader>ow "_diwhp

"make Y consistent with C and D
nnoremap Y y$

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

" ,# Surround a word with #{ruby interpolation}
map <leader># ysiw#
vmap <leader># c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map <leader>" ysiw"
vmap <leader>" c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map <leader>' ysiw'
vmap <leader>' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map <leader>( ysiw(
map <leader>) ysiw)
vmap <leader>( c( <C-R>" )<ESC>
vmap <leader>) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map <leader>] ysiw]
map <leader>[ ysiw[
vmap <leader>[ c[ <C-R>" ]<ESC>
vmap <leader>] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map <leader>} ysiw}
map <leader>{ ysiw{
vmap <leader>} c{ <C-R>" }<ESC>
vmap <leader>{ c{<C-R>"}<ESC>

map <leader>` ysiw`

" gary bernhardt's hashrocket
imap <c-l> <space>=><space>

"Go to last edit location with ,.
nnoremap <leader>. '.

"When typing a string, your quotes auto complete. Move past the quote
"while still in insert mode by hitting Ctrl-a. Example:
"
" type 'foo<c-a>
"
" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote
imap <C-a> <esc>wa

" ,q to toggle quickfix window (where you have stuff like Ag)
" ,oq to open it back up (rare)
nmap <silent> <leader>qc :cclose<CR>
nmap <silent> <leader>qo :copen<CR>


" Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>


"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, K, J
" NOTE: This has moved to vim/settings/vim-tmux-navigator.vim.
" nnoremap <silent> <C-h> <C-w>h
" nnoremap <silent> <C-l> <C-w>l
" nnoremap <silent> <C-k> <C-w>k
" nnoremap <silent> <C-j> <C-w>j

" Make gf (go to file) create the file, if not existent
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>

" Zoom in
map <silent> <leader>gz <C-w>o

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" create <%= foo %> erb tags using Ctrl-k in edit mode
imap <silent> <C-K> <%=   %><Esc>3hi

" create <%= foo %> erb tags using Ctrl-j in edit mode
imap <silent> <C-J> <%  %><Esc>2hi

" ============================
" Shortcuts for everyday tasks
" ============================

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand('%:~')<CR>
nnoremap <silent> <leader>cr :let @* = expand('%')<CR>
nnoremap <silent> <leader>cn :let @* = expand('%:t')<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"(v)im (c)ommand - execute current line as a vim command
nmap <silent> <leader>vc yy:<C-f>p<C-c><CR>

"(v)im (r)eload
nmap <silent> <leader>vr :so %<CR>

" Type ,hl to toggle highlighting on/off, and show current value.
noremap <leader>hl :set hlsearch! hlsearch?<CR>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo 'hi<' . synIDattr(synID(line('.'),col('.'),1),'name') . '> trans<' . synIDattr(synID(line('.'),col('.'),0),'name') . '> lo<' . synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name') . '>' . ' FG:' . synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'fg#')<CR>

" Map Ctrl-x and Ctrl-z to navigate the quickfix error list (normally :cn and
" :cp)
nnoremap <silent> <C-x> :cn<CR>
nnoremap <silent> <C-z> :cp<CR>

" Automatically jump to a file at the correct line number
" i.e. if your cursor is over /some/path.rb:50 then using 'gf' on it will take
" you to that line
" use ,gf to go to file in a vertical split
nnoremap <silent> <leader>gf   :vertical botright wincmd F<CR>


"" Tag jumping
" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> <leader>f <C-]>

" use ,F to jump to tag in a vertical split
nnoremap <silent> <leader>F :let word=expand('<cword>')<CR>:vsp<CR>:wincmd w<cr>:exec('tag '. word)<cr>
