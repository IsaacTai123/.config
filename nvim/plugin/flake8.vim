autocmd BufWritePost *.py call flake8#Flake8()
let g:flake8_quickfix_height=8

" add binding to call the function
nnoremap <leader>ff :call flake8#Flake8ShowError()<cr>
