"   autocmd FileType defx call s:defx_settings()
"   autocmd VimEnter * if isdirectory(expand(printf('#%s:p', expand('<abuf>'))))
"     \ | call s:defx_open({ 'dir': expand(printf('#%s:p', expand('<abuf>'))) }) | endif
"
" " Open filetree
" " nnoremap <silent><Leader>d :call <sid>defx_open({ 'split': v:true })<CR>
" nnoremap <silent><Leader>d :call <sid>defx_open({ 'split': v:true })<CR>
"
"
" function! s:defx_open(...) abort
"   let l:opts = get(a:, 1, {})
"   let l:args = '-listed -resume'
"   let l:is_vim_config_file = &filetype ==? 'vim'
"   let l:is_opened = bufwinnr('defx') > 0 && !l:is_vim_config_file
"   let l:is_file = has_key(l:opts, 'dir') && !isdirectory(l:opts.dir)
"
"   if l:is_opened
"     call execute('wincmd p')
"   else
"     call execute(printf('Defx %s %s -search=%s %s', l:args, '-columns=icons:filename', expand('%:p'), expand('%:p:h')))
"   endif
" endfunction
"
" function! s:defx_context_menu() abort
"   let l:actions = ['new_file', 'new_directory', 'rename', 'copy', 'move', 'paste', 'remove']
"   let l:selection = confirm('Action?', '&New file\nNew &Folder\n&Rename\n&Copy\n&Move\n&Paste\n&Delete')
"   silent exe 'redraw'
"
"   return feedkeys(defx#do_action(l:actions[l:selection - 1]))
" endfunction
"
" function! s:defx_settings() abort
"   nnoremap <silent><buffer>m :call <sid>defx_context_menu()<CR>
"   nnoremap <silent><buffer><expr> o defx#do_action('open')
"   nnoremap <silent><buffer><expr> s defx#do_action('open', 'botright vsplit')
"   nnoremap <silent><buffer><expr> R defx#do_action('redraw')
"   nnoremap <silent><buffer><expr> u defx#do_action('cd', ['..'])
"   nnoremap <silent><buffer><expr> H defx#do_action('toggle_ignored_files')
"   nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
"   nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
"   nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
"   nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
"   nnoremap <silent><buffer><expr> q defx#do_action('quit')
"   nnoremap <silent><buffer><expr> <CR> defx#do_action('multi', ['drop'])
" endfunction
"
"===================================================================================

" Define mappings
"cnoreabbrev sf Defx -listed -new
"      \ -columns=indent:mark:icon:icons:filename:git:size
"      \ -buffer-name=tab`tabpagenr()`<CR>
" nnoremap <silent>sf :<C-u>Defx -listed -resume
"       \ -columns=mark:indent:space:icon:space:icons:space:indent:filename
"       \ -buffer-name=tab`tabpagenr()`
"       \ `expand('%:p:h')` -search=`expand('%:p')`<CR>

nnoremap <silent><leader>d :<C-u>Defx -listed -resume
      \ -columns=mark:indent:indent:icons:space:filename
      \ -buffer-name=tab`tabpagenr()`
      \ `expand('%:p:h')` -search=`expand('%:p')`<CR>

" nnoremap <silent>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  " nnoremap <silent><buffer><expr> <CR>
	  " \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> yy
	  \ defx#do_action('copy')
	  nnoremap <silent><buffer><expr> dd
	  \ defx#do_action('move')
	  nnoremap <silent>buffer><expr> pp
	  \ defx#do_action('paste')
	  nnoremap <silent><buffer><expr> l
	  \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> <Right>
	  \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> s
	  \ defx#do_action('open', 'vsplit')
	  nnoremap <silent><buffer><expr> n
	  \ defx#do_action('open', 'pedit')
	  nnoremap <silent><buffer><expr> i
	  \ defx#do_action('open', 'choose')
	  nnoremap <silent><buffer><expr> o
	  \ defx#do_action('open_or_close_tree')
	  nnoremap <silent><buffer><expr> K
	  \ defx#do_action('new_directory')
	  nnoremap <silent><buffer><expr> N
	  \ defx#do_action('new_file')
	  nnoremap <silent><buffer><expr> M
	  \ defx#do_action('new_multiple_files')
	  nnoremap <silent><buffer><expr> C
	  \ defx#do_action('toggle_columns',
	  \                'mark:indent:icon:indent:filename:type:size:time')
	  nnoremap <silent><buffer><expr> S
	  \ defx#do_action('toggle_sort', 'time')
	  nnoremap <silent><buffer><expr> dD
	  \ defx#do_action('remove')
	  nnoremap <silent><buffer><expr> cw
	  \ defx#do_action('rename')
	  nnoremap <silent><buffer><expr> !
	  \ defx#do_action('execute_command')
	  nnoremap <silent><buffer><expr> x
	  \ defx#do_action('execute_system')
	  nnoremap <silent><buffer><expr> YY
	  \ defx#do_action('yank_path')
	  nnoremap <silent><buffer><expr> .
	  \ defx#do_action('toggle_ignored_files')
	  nnoremap <silent><buffer><expr> ;
	  \ defx#do_action('repeat')
	  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', '..')
	  nnoremap <silent><buffer><expr> <Left>
	  \ defx#do_action('cd', '..')
	  nnoremap <silent><buffer><expr> ~
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> q
	  \ defx#do_action('quit')
	  nnoremap <silent><buffer><expr> <Space>
	  \ defx#do_action('toggle_select') . 'j'
	  nnoremap <silent><buffer><expr> m
	  \ defx#do_action('toggle_select') . 'j'
	  nnoremap <silent><buffer><expr> vv
	  \ defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> *
	  \ defx#do_action('toggle_select_all')
	  nnoremap <silent><buffer><expr> j
	  \ line('.') == line('$') ? 'gg' : 'j'
	  nnoremap <silent><buffer><expr> k
	  \ line('.') == 1 ? 'G' : 'k'
	  nnoremap <silent><buffer><expr> <C-l>
	  \ defx#do_action('redraw')
	  nnoremap <silent><buffer><expr> <C-g>
	  \ defx#do_action('print')
	  nnoremap <silent><buffer><expr> cd
	  \ defx#do_action('change_vim_cwd')
	endfunction

call defx#custom#column('icon', {
      \ 'directory_icon': '+',
      \ 'opened_icon': '-',
      \ 'root_icon': ' ',
      \ })
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })


"==================================================================
" For defx icon
"
hi DefxIconsDirectory guifg=#E0B64A
hi DefxIconsParentDirectory guifg=#E0B64A
hi DefxIconsNestedTreeIcon guifg=#FF0000
hi DefxIconsOpenedTreeIcon guifg=#FF0000

"==================================================================
" For vim-choosewin
let g:choosewin_overlay_enable = 1

