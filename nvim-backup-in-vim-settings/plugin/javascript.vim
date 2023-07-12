let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" =====================================
" Flagging Unnecessary Whitespace
" =====================================
autocmd BufRead,BufNewFile *.js match BadWhitespace /\s\+$/
