" 實現按下F5執行Python3程式碼
filetype plugin on
nnoremap <F5> :call PRUN()<CR>
func! PRUN()
  exec "w"
  if &filetype == 'python'
    exec "!python3 %"
  endif
endfunc



"在visual mode的時候按F9 在filetype=python的時後片段執行python code.
autocmd FileType python vnoremap <buffer> <F9> :!python3<CR>
