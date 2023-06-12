set suffixesadd=.java
set makeprg=javac\ -g\ %

" 實現按下F5執行Python3程式碼
filetype plugin on
nnoremap <F7> :call PRUN_J()<CR>
func! PRUN_J()
  exec "w"
  if &filetype == 'java'
    exec "!java %"
  endif
endfunc



"在visual mode的時候按F9 在filetype=python的時後片段執行python code.
autocmd FileType java vnoremap <buffer> <F9> :!java<CR>
