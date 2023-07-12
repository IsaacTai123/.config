let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|tmp$|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" for faster search(using Silver Searcher)
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" map to cmd p  <but have to diable the defult short cut for mac>
" Here is add a keybindings directly to iterm2 to map cmd + p to CtrlP cmd
" nnoremap <D-p> :CtrlP<cr>

"ignore all the file that are ignore by git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <C-b> :CtrlPBuffer<CR>
