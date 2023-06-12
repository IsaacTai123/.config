" 實現按下F5執行Python3程式碼
filetype plugin on
" nnoremap <space>p :call PRUN()<CR>
func! PRUN()
  exec "w"
  if &filetype == 'python'
    exec "!python3 %"
  endif
endfunc

"在visual mode的時候按F9 在filetype=python的時後片段執行python code.
" autocmd FileType python vnoremap <buffer> <space>s :!python3<CR>

" =====================================
" Python indentation
" =====================================
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" =====================================
" Flagging Unnecessary Whitespace
" =====================================
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
