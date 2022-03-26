"--------------
" key mapping
"--------------
" disable arrow keys
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>



" remap some key for easy access
inoremap jk <Esc>
inoremap jj <Esc>
vnoremap <space><space> <Esc>
nnoremap <Leader>j o<Esc>
nnoremap <Leader>k O<Esc> 
nnoremap <leader>w :wa<CR>
"map 讀取文件
nnoremap <leader>s :so %<CR>
nnoremap H ^
nnoremap L $
nnoremap <leader>d :e .<CR>
nnoremap <leader>e :Explore<CR>


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map vv <C-W>v
map ss <C-W>s
map Q <C-W>q

"copy and paste
vnoremap <C-c> "*y :let @+=@*<CR>
map <leader><C-v> "+P

"map FZF
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
" noremap <C-n> :Files<CR>
" noremap <silent> <M-b> :m :Buffers<CR>
"

"===== map buffer shortcut ======
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
" nmap <leader>T :enew<CR>

" previous and next buffer noremap [b :bp<Enter>
noremap ]b :bn<CR>
noremap [b :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
" nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
