call which_key#register('<Space>', "g:which_key_map_space")
call which_key#register(',', "g:which_key_map_dot")
call which_key#register('g', "g:which_key_map_g")

nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
vnoremap <silent> g :<c-u>WhichKeyVisual 'g'<CR>


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

let g:which_key_map_space.l = {
      \ 'name' : '+lsp',
      \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
      \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
      \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        \ },
      \ }

let g:which_key_map_space.c = {
      \ 'name' : '+coc' ,
      \ 'a' : 'CocList diagnostics',
      \ 'e' : 'CocList extensions',
      \ 'c' : 'CocList commands',
      \ 'o' : 'CocList outline',
      \ 's' : 'CocList -I symbols',
      \ 'j' : 'CocNext',
      \ 'k' : 'CocPrev',
      \ 'p' : 'CocListResume',
      \ 'm' : [':CocList marketplace', 'CocList marketplace'],
      \ 'A' : [':CocAction', 'Coc Action'],
      \ 'i' : [':CocInfo', 'Coc Info'],
      \ }

let g:which_key_map_space.c[';'] = {
      \ 'name' : '+moreAction' ,
      \ 'n' : [':call CocAction("diagnosticNext")', 'Next diagnostic'],
      \ 'p' : [':call CocAction("diagnosticPrevious")', 'Prev diagnostic'],
      \ 'N' : [':call CocAction("diagnosticNextError")', 'Next error diagnostic'],
      \ 'P' : [':call CocAction("diagnosticPreviousError")', 'Prev error diagnostic'],
      \ 'd' : [':call CocAction("jumpDefinition")', 'Jump to definition'],
      \ 's' : [':call CocAction("jumpDeclaration")', 'Jump to declaration'],
      \ 't' : [':call CocAction("jumpTypeDefinition")', 'Type definition'],
      \ 'r' : [':call CocAction("jumpReferences")', 'Jump to reference'],
      \ 'i' : [':call CocAction("jumpImplementation")', 'Jump to implementation'],
      \ 'R' : [':call CocAction("rename")', 'coc rename'],
      \ 'c' : [':call CocAction("diagnosticInfo")', 'Show diagnostic of current position'],
      \ 'f' : [':call CocAction("format")', 'Format whole buffer'],
      \ 'x' : [':call CocAction("refactor")', 'Open Refactor win'],
      \}


let g:which_key_map_space.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5' , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':esize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'horizon split-window']    ,
      \ 'v' : ['<C-W>v'     , 'vertical split-window']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

" let g:which_key_map_space[','] = {
"       \ 'name' : '+command' ,
"       \ '' : [':'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \ 'w' : ['o'     , 'other-window'],
"       \}

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


let g:which_key_map_space.t = {
      \ 'name' : '+floaterm',
      \ '/' : [':FloatermNew --cwd=<root>', 'New Floaterm Win'],
      \ ';' : [':FloatermNew! cd %:p:h', 'New Floaterm Win'],
      \ 'h' : [':FloatermHide', 'Hide Floaterm Win'],
      \ 'n' : [':FloatermNext', 'Next Floaterm Win'],
      \ 'k' : [':FloatermKill', 'Kill Floaterm Win'],
      \ 'p' : [':FloatermPrev', 'Prev Floaterm Win'],
      \ 's' : [':FloatermShow', 'Show Floaterm Win'],
      \ 't' : [':FloatermToggle', 'Toggle Floaterm Win'],
      \ 'u' : [':FloatermUpdate', 'Update Floaterm Win'],
      \ '.' : [':FloatermNew! --height=0.15 --width=0.98 --wintype=normal --name=terminal --position=bottom --autoclose=1 cd %:p:h', 'terminal'],
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
      \ 'g' : 'Jump to startUpLine',
      \ 'h' : 'Sneak back',
      \ 'l' : 'Sneak next',
      \ '<C-N>' : 'multi cursor#new',
      \ '<M-n>' : 'multi cursor#selectAll',
      \ 'x' : 'open url in browser',
      \ 'xx' : 'open github for vimplug',
      \ }


"
" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
