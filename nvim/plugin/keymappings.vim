"=================
" key mapping
"=================
" disable arrow keys
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

"=================
" remap some key for easy access
"=================
inoremap jk <Esc>
inoremap jj <Esc>
" vnoremap <space><space> <Esc>
nnoremap <Leader>j o<Esc>
nnoremap <Leader>k O<Esc> 
nnoremap <leader>w :wa<CR>
nnoremap <leader>s :w<CR>
"map 讀取文件
" nnoremap <leader>s :so %<CR>
nnoremap H ^
nnoremap L $
" nnoremap <leader>d :e .<CR>
" nnoremap <leader>e :Explore<CR>
" nnoremap <leader>cb :bd<CR>
nnoremap gg gg
vnoremap gg gg

"=================
" Insert ; at the end
"=================
inoremap <C-e>; <end>;<CR>
inoremap <C-e>. <end>.
inoremap <C-b>; <esc>][i<end>;<CR>
inoremap <C-b>. <esc>][i<end>.

"=================
" resize window
"=================
nnoremap <M-l> <C-w>2<
nnoremap <M-h> <C-w>2>
nnoremap <M-k> <C-w>2+
nnoremap <M-j> <C-w>2-


"=================
" split navigations
"=================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <M-v> <C-W>v
map <M-s> <C-W>s
map Q :q<CR>
" map XX :q!<CR>
map XX :call QuitVim()<CR>
map <C-o> <C-w>o

fun! QuitVim()
  let choice = confirm("This will Exit without saving are you sure ?", "&yes\n&no", 1)
  if choice == 1
    execute "q!"
    echon "Good Luck !"
    return
  endif
  echon "Action canceled !"
endfun

"=================
" copy and paste
"=================
vnoremap <C-c> "*y :let @+=@*<CR>
" map <leader><C-v> "+P

"=================
" map FZF
"=================
" noremap <leader>f :Files<CR>
" noremap <leader>b :Buffers<CR>
" noremap <C-n> :Files<CR>
" noremap <silent> <M-b> :m :Buffers<CR>
"

"=================
" map buffer shortcut
"=================
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
" nmap <leader>T :enew<CR>

"=================
" previous and next buffer noremap [b :bp<Enter>
"=================
noremap ]b :bn<CR>
noremap [b :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
" nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
"
"
" ==============================
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" jump to the next function
nnoremap <silent> ]f :call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>
" jump to the previous function
nnoremap <silent> [f :call search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
