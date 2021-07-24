"" fzf.vim
let $FZF_DEFAULT_COMMAND =  "find -path '*/.git' -prune -o -path '*/node_modules' -prune -o -path '*/target' -prune -o -path '*/dist' -prune -o  -type f -print -o -type l -print 2> /dev/null"
set grepprg=git\ grep\ --line-number

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore node_modules -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  " Caution, it uses gitignore patterns, to include vcs ignored, add
  " `--no-ignore-vcs`
  let $FZF_DEFAULT_COMMAND = "rg --files --hidden --follow --glob '!.git'"
  set grepprg=rg\ --vimgrep
endif

" Additional mapping for buffer search
nnoremap <silent> <leader>b :Buffers<CR>
" File search
nnoremap <silent> <leader>t :FZF<CR>
" Files under version control
nnoremap <silent> <leader>e :GFiles<CR>
"Recovery commands from history through FZF
" nmap <leader>y :History:<CR>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open FZF starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map <leader>ja :FZF app/assets<CR>
map <leader>jm :FZF app/models<CR>
map <leader>jc :FZF app/controllers<CR>
map <leader>jv :FZF app/views<CR>
map <leader>jj :FZF app/assets/javascripts<CR>
map <leader>jh :FZF app/helpers<CR>
map <leader>jl :FZF lib<CR>
map <leader>jp :FZF public<CR>
map <leader>js :FZF spec<CR>
map <leader>jf :FZF fast_spec<CR>
map <leader>jd :FZF db<CR>
map <leader>jC :FZF config<CR>
map <leader>jV :FZF vendor<CR>
map <leader>jF :FZF factories<CR>
map <leader>jT :FZF test<CR>

