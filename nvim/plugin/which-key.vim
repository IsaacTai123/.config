call which_key#register('<Space>', "g:which_key_map_space")
call which_key#register(',', "g:which_key_map_dot")
call which_key#register('g', "g:which_key_map_g")

nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
vnoremap <silent> g :<c-u>WhichKeyVisual 'g'<CR>

" Not a fan of floating windows for this.
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey           Operator 
highlight default link WhichKeySeperator  DiffAdded
highlight default link WhichKeyGroup      Identifier
highlight default link WhichKeyDesc       DiffAdded

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:which_key_map = {}
let g:which_key_sep = '→'

let g:which_key_position = 'botright'
let g:which_key_hspace = 5
let g:which_key_centered = 0


" Define prefix dictionary
let g:which_key_map_space =  {}
let g:which_key_map_dot =  {}
let g:which_key_map_g =  {}


" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the '+file' group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.



" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
" and descriptions for the existing mappings.
"
" Note:
" Some complicated ex-cmd may not work as expected since they'll be
" feed into `feedkeys()`, in which case you have to define a decicated
" Command or function wrapper to make it work with vim-which-key.
" Ref issue #126, #133 etc.

let g:which_key_map_space['d'] = [':CtrlPBuffer', 'ctrlP buffer']
let g:which_key_map_space['u'] = [':CtrlPMRUFiles', 'ctrlP MRU files']
" let g:which_key_map_space['h'] = [':CtrlPMRUFiles', 'ctrlP MRU files']
" let g:which_key_map_space['l'] = [':CtrlPMRUFiles', 'ctrlP MRU files']

let g:which_key_map_space.b = {
      \ 'name' : '+buffer' ,
      \ '1' : [':b1'        , 'buffer 1']        ,
      \ '2' : [':b2'        , 'buffer 2']        ,
      \ 'd' : [':bd'        , 'delete-buffer']   ,
      \ 'f' : [':bfirst'    , 'first-buffer']    ,
      \ 'h' : [':Startify'  , 'home-buffer']     ,
      \ 'l' : [':blast'     , 'last-buffer']     ,
      \ 'n' : [':bnext'     , 'next-buffer']     ,
      \ 'p' : [':bprevious' , 'previous-buffer'] ,
      \ }

" let g:which_key_map_space.c = {
"       \ 'name' : '+coc' ,
"       \ 'd' : [':CocList diagnostics', 'list diagnose'],
"       \ 'e' : [':CocList extensions', 'list extensions'],
"       \ 'c' : [':CocList commands', 'list commands'],
"       \ 'o' : [':CocList outline', 'list outline'],
"       \ 's' : [':CocList -I symbols', 'list symbols'],
"       \ 'l' : [':CocList snippets', 'Coc snippets'],
"       \ 'j' : [':CocNext', 'Coc next'],
"       \ 'k' : [':CocPrev', 'Coc Previous'],
"       \ 'p' : [':CocListResume', 'CocListResume'],
"       \ 'm' : [':CocList marketplace', 'CocList marketplace'],
"       \ 'a' : [':CocAction', 'Coc Action'],
"       \ 'i' : [':CocInfo', 'Coc Info'],
"       \ 'C' : [':CocConfig', 'Coc config'],
"       \ }

" let g:which_key_map_space.a = {
"       \ 'name' : '+moreAction' ,
"       \ 'n' : [':call CocAction("diagnosticNext")', 'Next diagnostic'],
"       \ 'p' : [':call CocAction("diagnosticPrevious")', 'Prev diagnostic'],
"       \ 'N' : [':call CocAction("diagnosticNextError")', 'Next error diagnostic'],
"       \ 'P' : [':call CocAction("diagnosticPreviousError")', 'Prev error diagnostic'],
"       \ 'd' : [':call CocAction("jumpDefinition")', 'Jump to definition'],
"       \ 's' : [':call CocAction("jumpDeclaration")', 'Jump to declaration'],
"       \ 't' : [':call CocAction("jumpTypeDefinition")', 'Type definition'],
"       \ 'r' : [':call CocAction("jumpReferences")', 'Jump to reference'],
"       \ 'i' : [':call CocAction("jumpImplementation")', 'Jump to implementation'],
"       \ 'R' : [':call CocAction("rename")', 'coc rename'],
"       \ 'c' : [':call CocAction("diagnosticInfo")', 'Show diagnostic of current position'],
"       \ 'f' : [':call CocAction("format")', 'Format whojjle buffer'],
"       \ 'x' : [':call CocAction("refactor")', 'Open Refactor win'],
"       \}

let g:which_key_map_space.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig', 'CocConfig'],
      \ 'w' : [':CocInfo', 'CocInfo'],
      \ ';' : ['<Plug>(coc-refactor)', 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)', 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)', 'selected action'],
      \ 'd' : ['<Plug>(coc-definition)', 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)', 'declaration'],
      \ 'f' : ['<Plug>(coc-format-selected)', 'format selected'],
      \ 'F' : ['<Plug>(coc-format)', 'format'],
      \ 't' : ['<Plug>(coc-type-definition)', 'type definition'],
      \ 'h' : ['<Plug>(coc-float-hide)', 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)', 'implementation'],
      \ 'j' : ['<Plug>(coc-float-jump)', 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)', 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)', 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)', 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)', 'open link'],
      \ 'M' : ['<Plug>(coc-rename)', 'rename'],
      \ 'x' : ['<Plug>(coc-fix-current)', 'quickfix'],
      \ 'R' : ['<Plug>(coc-command-repeat)', 'repeat'],
      \ 'r' : ['<Plug>(coc-references)', 'references'],
      \ 'b' : [':CocNext', 'next action'],
      \ 'B' : [':CocPrev', 'prev action'],
      \ 'O' : [':CocList outline', 'outline'],
      \ 'e' : [':CocList extensions', 'extensions'],
      \ 'I' : [':CocList diagnostics', 'diagnostics'],
      \ 's' : [':CocList snippets', 'snippets'],
      \ 'm' : [':CocList marketplace', 'marketplace'],
      \ 'c' : [':CocList commands', 'commands'],
      \ 'u' : [':CocListResume', 'resume list'],
      \ 'k' : [':call Show_documentation()', 'show documentation'],
      \ 'X' : [':CocDisable', 'Coc disable'],
      \ 'E' : [':CocEnable', 'Coc enable'],
      \}

function! Show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


let g:which_key_map_space.e = {
      \ 'name' : '+coc-explorer-presets' ,
      \ 'e' : [':CocCommand explorer', 'coc file explore'],
      \ 'f' : [':CocCommand explorer --preset floating', 'coc file explore float'],
      \ 't' : [':CocCommand explorer --preset floatingTop', 'coc open floatingTop'],
      \ 'l' : [':CocCommand explorer --preset floatingLeftside', 'coc open floatingLeftside'],
      \ 'r' : [':CocCommand explorer --preset floatingRightside', 'coc open floatingRightside'],
      \ 'n' : [':CocCommand explorer --preset .nvim', 'coc nvim folder'],
      \ 'c' : [':CocCommand explorer --preset cocConfig', 'coc cocConfig folder'],
      \ 'b' : [':CocCommand explorer --preset buffer', 'coc open buffer'],
      \ 's' : [':CocCommand explorer --preset simplify', 'coc open simplify'],
      \ 'w' : [':CocCommand explorer --preset web', 'coc open Web'],
      \ 'd' : [':CocCommand explorer --preset workDocument', 'coc open WorkDocument'],
      \ 'm' : [':CocCommand explorer --preset myDocument', 'coc open MyDocument'],
      \ 'L' : [':CocList explPresets', 'coc list all presets'],
      \}


let g:which_key_map_space.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>2<'    , 'expand-window-left']    ,
      \ 'j' : ['<C-W>2-'    , 'expand-window-below']   ,
      \ 'l' : ['<C-W>2>'    , 'expand-window-right']   ,
      \ 'k' : ['<C-W>2+'    , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'horizon split-window']  ,
      \ 'v' : ['<C-W>v'     , 'vertical split-window'] ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
" \ 'h' : ['<C-W>h'     , 'window-left']           ,
" \ 'j' : ['<C-W>j'     , 'window-below']          ,
" \ 'l' : ['<C-W>l'     , 'window-right']          ,
" \ 'k' : ['<C-W>k'     , 'window-up']             ,

let g:which_key_map_space.f = {
      \ 'name' : '+fzf',
      \ 'H' : [':FZF ~/', 'Search from HOME'],
      \ '/' : [':FZF /', 'Search from /'],
      \ 'c' : [':FZF' , 'Search in current folder'],
      \ 'b' : [':Buffers', 'Search Buffer'],
      \ 'r' : [':Rg', 'Srch File & Content'],
      \ 'B' : [':BLines', 'Srch in current Buffer'],
      \ 'l' : [':Lines', 'Srch all Buffer'],
      \ 'f' : [':Files', 'File Only'],
      \ 'h' : [':History', 'All cmd History'],
      \ 'm' : [':Marks', 'Search Mark'],
      \ 'M' : [":Maps", 'Search all Maps'],
      \}

let g:which_key_map_space.o = {
      \ 'name' : '+other',
      \ 'a' : [':call flake8#Flake8ShowError()', 'check error with flake8'],
      \ 't' : [':IndentLinesToggle', 'IndentLines Toggle'],
      \ 'p' : ['"+P', 'Paste with mac clipboard'],
      \ 'T' : [':TagbarToggle', 'Tag bar Toggle'],
      \ 'm' : [':MarkdownPreview', 'Start markdown preview'],
      \ 's' : [':MarkdownPreviewStop', 'Stop markdown preview'],
      \ ']f' : ['', 'move next function'],
      \ '[f' : ['', 'move prev function'],
      \ 'g' : [':Goyo 70%x85%', 'goyo enable reading'],
      \ 'c' : [':Goyo!', 'goyo close reading'],
      \}

let g:which_key_map_space.m = {
      \ 'name' : '+markdown',
      \ 'p' : [':MarkdownPreview', 'Start markdown preview'],
      \ 's' : [':MarkdownPreviewStop', 'Stop markdown preview'],
      \ 'ge' : ['<Plug>Markdown_EditUrlUnderCursor', 'open link under cursor for vim edit'],
      \ 'n' : ['<Plug>Markdown_MoveToNextHeader', 'move to next header ]]'],
      \ 'b' : ['<Plug>Markdown_MoveToPreviousHeader', 'move to prev header [['],
      \ 'sn' : ['<Plug>Markdown_MoveToNextSiblingHeader', 'move to next sibling header ]['],
      \ 'sp' : ['<Plug>Markdown_MoveToPreviousSiblingHeader', 'move to prev sibling header []'],
      \ 'ch' : ['<Plug>Markdown_MoveToCurHeader', 'move to current header ]h'],
      \ '.' : ['<Plug>Markdown_MoveToParentHeader', 'move to parent header ]u'],
      \ 'd' : [':HeaderDecrease', 'decrease level of all header'],
      \ 'i' : [':HeaderIncrease', 'increase level of all header'],
      \ 'f' : [':TableFormat', 'format table under cursor'],
      \ 'q' : [':Toc', 'quick fix - vertical'],
      \ 'h' : [':Toch', 'quick fix - horizontal'],
      \ 'w' : [':Toct', 'quick fix - new tab'],
      \ 't' : [':InsertToc', 'insert table of contents'],
      \ 'l' : [':InsertToc', 'insert numbered list'],
      \}


let g:which_key_map_space.p = {
      \ 'name' : '+md-table-mode',
      \ 'e' : [':TableModeEnable', 'enable table mode'],
      \ 't' : [':TableModeToggle', 'toggle table mode'],
      \ 'd' : [':TableModeDisable', 'disable table mode'],
      \ 'r' : [':TableModeRealign', 'table realign'],
      \ 's' : [':TableSort', 'table sort'],
      \ 'c' : [':Tableize', 'create table with exist content'],
      \ 'f' : [':TableEvalFormulaLine', 'evaluate the formula line'],
      \}


let g:which_key_map_space.g = {
      \ 'name' : '+gitgutter',
      \ 'n' : [':GitGutterNextHunk', 'Next Hunk'],
      \ 'p' : [':GitGutterPrevHunk', 'Prv Hunk'],
      \ 'w' : [':GitGutterPreviewHunk', 'Preview Hunk'],
      \ 'f' : [':GitGutterFold', 'Fold all unchanged lines'],
      \ 'e' : [':GitGutterSignsEnable', 'Turn signs on'],
      \ 'c' : [':GitGutterSignsDisable', 'Turn signs off'],
      \ 't' : [':GitGutterSignsDisable', 'Toggle signs'],
      \ 'h' : [':GitGutterLineHighlightsEnable', 'Highlight Gitgutter Hunk'],
      \ 'd' : [':GitGutterLineHighlightsDisable', 'Disable Highlight Gitgutter Hunk'],
      \ 'l' : [':GitGutterLineHighlightsToggle', 'Toggle Highlight Gitgutter Hunk'],
      \ 's' : [':GitGutterStageHunk', 'Stage Hunk'],
      \ 'u' : [':GitGutterUndoHunk', 'Undo Hunk'],
      \ 'b' : [':GV', 'Commit browser'],
      \ 'z' : [':GV!', 'Commit browser only related this file'],
      \ 'x' : [':GV?', 'Commit browser in buttom'],
      \ 'o' : [':GBrowse', 'Open Github page'],
      \ 'v' : [':Gdiffsplit', 'split to diff file'],
      \ 'H' : [':Gblame', 'show all history'],
      \}

let g:which_key_map_space.v = {
      \ 'name' : '+vim',
      \ 's' : [':set fdm=syntax', 'fdm syntax'],
      \ 'i' : [':set fdm=indent', 'fdm indent'],
      \ 'm' : [':set fdm=manual', 'fdm manual'],
      \ 'M' : [':set fdm=mark', 'fdm mark'],
      \ 'd' : [':set fdm=diff', 'fdm diff'],
      \ 'c' : [':set fdm?', 'current fdm'],
      \}


let g:which_key_map_space.t = {
      \ 'name' : '+floaterm',
      \ '/' : [':FloatermNew --cwd=<root>', 'New Floaterm Win'],
      \ ';' : [':FloatermNew! --height=0.9 --width=0.9 cd %:p:h', 'New Floaterm Win'],
      \ 'h' : [':FloatermHide', 'Hide Floaterm Win'],
      \ 'n' : [':FloatermNext', 'Next Floaterm Win'],
      \ 'k' : [':FloatermKill', 'Kill Floaterm Win'],
      \ 'p' : [':FloatermPrev', 'Prev Floaterm Win'],
      \ 's' : [':FloatermShow', 'Show Floaterm Win'],
      \ 't' : [':FloatermToggle', 'Toggle Floaterm Win'],
      \ 'u' : [':FloatermUpdate', 'Update Floaterm Win'],
      \ '.' : [':FloatermNew! --height=0.15 --width=0.98 --wintype=normal --name=terminal --position=bottom --autoclose=1 cd %:p:h', 'terminal'],
      \ 'b' : [':FloatermNew! --height=0.45 --width=0.98 --wintype=normal --name=terminal --position=bottom --autoclose=1 cd %:p:h', 'button terminal'],
      \ 'r' : [':FloatermNew --height=0.9 --width=0.9 --wintype=float --name=ranger --position=center --autoclose=1 ranger', 'ranger'],
      \ 'g' : [':FloatermNew --height=0.9 --width=0.9 --wintype=float --name=lazygit --position=center --autoclose=1 lazygit', 'lazygit'],
      \ 'T' : [':FloatermNew --height=0.95 --width=0.95 --wintype=float --name=tig --position=center --autoclose=1 tig', 'Tig'],
      \ 'H' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=htop --position=center --autoclose=1 htop', 'htop'],
      \ 'P' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=python --position=center --autoclose=1 python3', 'python'],
      \ 'N' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=node --position=center --autoclose=1 node', 'node.js'],
      \ 'U' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=ncdu --position=center --autocloseneedle=1 ncdu', 'ncdu'],
      \ 'q' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=note --position=center --autocloseneedle=1 sh ~/bin/notetaker.sh', 'note-taker'],
      \}

let g:which_key_map_space.s = {
      \ 'name' : '+surround',
      \ 'cs' : ['<Plug>Csurround', 'change surround'],
      \ 'cS' : ['<Plug>CSurround', 'change surround to up&down'],
      \ 'ds' : ['<Plug>DSurround', 'delete surround'],
      \ 'ys' : ['<Plug>Ysurround', 'Add surround'],
      \ 'yS' : ['<Plug>YSurround', 'Add surround to up&down'],
      \ 'yss' : ['<Plug>Yssurround', 'Add surround to entire Line'],
      \ 'ySS' : ['<Plug>YSsurround', 'Add surround to entire Line up&down'],
      \ 'S' : ['<Plug>VSurround', 'Add surround in V mode'],
      \}


" let g:which_key_space.g = {
"       \ 'name' : '+git',
"       \ 'o' : [':FloatermNew --height=0.8 --width=0.8 --wintype=float --name=lazygit --position=center --autoclose=1 lazygit<CR>', 'open lazygit'],
"       \}


" let g:which_key_map_dot = {
"       \ 'name' : '+leader-command' ,
"       \ 'j' : 'new line below',
"       \ 'k' : 'new line above',
"       \ 'w' : 'save all buffer',
"       \ 'f' : 'fzf Files',
"       \ 'b' : 'fzf buffers',
"       \ 'g' : 'fzf Rg',
"       \ ';' : 'Tagbar Toggle',
"       \ 't' : 'floatTerm Toggle - float-win',
"       \ 'ft' : 'floatTerm new float-win',
"       \ ',' : 'higroup search',
"       \ '<C-T>' : 'IndentLine Toggle',
"       \ 'rb' : 'Rainbow Parentheses Toggle',
"       \ }
"
let g:which_key_map_g = {
      \ 'name' : '+g-command',
      \ 'g' : 'Jump to startUpLine',
      \ 'h' : 'Sneak back',
      \ 'l' : 'Sneak next',
      \ '<C-N>' : 'multi cursor#new',
      \ '<M-n>' : 'multi cursor#selectAll',
      \ 'x' : 'open url in browser',
      \ 'xx' : 'open github for vimplug',
      \ '.' : 'Coc command repeat',
      \ '[' : 'Coc diagnostic prev',
      \ ']' : 'Coc diagnostic next',
      \ 'd' : 'Coc definition',
      \ 'i' : 'Coc implementation',
      \ 'r' : 'Coc references',
      \ 'y' : 'Coc type definition',
      \ 'f' : 'Coc format selected',
      \ 'n' : 'Coc rename',
      \ 'a' : 'Coc code action',
      \ 's' : 'Coc code action selected',
      \ 'k' : 'Coc range select',
      \ 'q' : 'Coc quick fix current',
      \ 'e' : 'Coc codelens action',
      \ ';' : 'Coc show documentation',
      \ '<' : 'TComment uncomment',
      \ '>' : 'TComment comment',
      \ '<b' : 'TComment uncomment block',
      \ '>b' : 'TComment comment block',
      \ 'c' : 'TComment toggle',
      \ 'c3c' : 'comment with 3" (TComment)',
      \ }

" let g:which_key_map_g.c = {
"       \ 'name' : '+coc',
"       \ '.' : 'Coc command repeat',
"       \ '[' : 'Coc diagnostic prev',
"       \ ']' : 'Coc diagnostic next',
"       \ 'd' : 'Coc definition',
"       \ 'i' : 'Coc implementation',
"       \ 'r' : 'Coc references',
"       \ 'y' : 'Coc type definition',
"       \ 'f' : 'Coc format selected',
"       \ 'n' : 'Coc rename',
"       \ 'a' : 'Coc code action',
"       \ 's' : 'Coc code action selected',
"       \ 'k' : 'Coc range select',
"       \ 'q' : 'Coc quick fix current',
"       \ 'e' : 'Coc codelens action',
"       \ ';' : 'Coc show documentation',
"                   \}
"
" let g:which_key_map_g.t = {
"       \ 'name' : '+t-command',
"       \ '<' : 'TComment uncomment',
"       \ '>' : 'TComment comment',
"       \ '<b' : 'TComment uncomment block',
"       \ '>b' : 'TComment comment block',
"       \ 'c' : 'TComment toggle',
"       \ 'c3c' : 'comment with 3" (TComment)',
"       \}

"
