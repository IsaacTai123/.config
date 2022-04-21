" let g:floaterm_title=''
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_opener='edit'
let g:floaterm_wintype='float' 
let g:floaterm_position='center'
let g:floaterm_autoclose=1
" let g:floaterm_borderchars=
"
"g:floaterm_keymap_new
" g:floaterm_keymap_prev
" g:floaterm_keymap_next
" g:floaterm_keymap_first
" g:floaterm_keymap_last
" g:floaterm_keymap_hide
" g:floaterm_keymap_show
" g:floaterm_keymap_kill
" g:floaterm_keymap_toggle

" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=gruvbox guifg=#FFFFFF

" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray


" let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'

" nnoremap <C-g> :FloatermNew --height=0.8 --width=0.8 --wintype=float --name=lazygit --position=center --autoclose=1 lazygit<CR>
"
" nnoremap <C-h> :FloatermNew --height=0.8 --width=0.8 --wintype=float --name=htop --position=center --autoclose=1 htop<CR>


" ========== Tips ==========
" <C-\><C-n> to enter normal mode inside floating terminal
