" vnoremap <F8> :call PRUNautopep8()<CR>
" nnoremap <F8> :call PRUNautopep8()<CR>
"
" func! PRUNautopep8()
"   if &filetype == 'python'
"     exec ':Autopep8'
"   endif
" endfunc
"
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
