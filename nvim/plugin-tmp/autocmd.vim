"=================
" lines to save text folding
"=================
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
autocmd BufWinLeave *.* if expand("%") != "" | mkview | endif
autocmd BufWinEnter *.* if expand("%") != "" | loadview | endif
" autocmd BufDelete *.* :call Makefoldview()
" autocmd VimLeave *.* :call Makefoldview()
" autocmd BufEnter *.* :call Loadview()

" fun! Makefoldview()
"   let choice = confirm("mkview?", "&yes\n&no", 1)
"   if choice == 1
"     execute 'mkview'
"     echon 'view have been created !!'
"     return
"   endif
"   echon 'Quit without create view'
" endfun
"
" fun! Loadview()
"   let choice = confirm("loadview?", "&yes\n&no", 1)
"   if choice == 1
"     execute 'loadview'
"     echon 'view have been loaded !!'
"     return
"   endif
"   echon 'No need to loadview !'
" endfun


" =====================================
" Js, html, css indentation
" =====================================
au BufNewFile,BufRead *.js,*.html,*.css,*.md
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


