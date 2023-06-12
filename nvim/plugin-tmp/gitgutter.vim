let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)

set signcolumn=yes  " 讓gitgutter 的符號自成個一個column 才不會擋住我的line number
let g:gitgutter_set_sign_backgrounds = 1

" let g:gitgutter_sign_added = 'xx'
let g:gitgutter_sign_modified = 'M'
" let g:gitgutter_sign_removed = ''
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_removed_above_and_below = '{'
" let g:gitgutter_sign_modified_removed = 'ww'
"
highlight GitGutterAdd    guifg=#009900 ctermfg=2 
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
