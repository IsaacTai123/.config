" autocmd BufWritePost *.py call flake8#Flake8()
let g:flake8_quickfix_height=12

" show the error of the current line in the ruler
" nnoremap <space>of :call flake8#Flake8ShowError()<cr>

" execute flake check open up quickfix windows.
autocmd FileType python map <buffer> <space>of :call flake8#Flake8()<CR>
