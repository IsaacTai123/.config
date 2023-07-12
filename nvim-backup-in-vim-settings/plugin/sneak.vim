map s <Plug>Sneak_s
map S <Plug>Sneak_S

"label-mode for a minimalist alternative to
let g:sneak#label = 1

"imediately move to the next instance of search, if you move the cursor sneak
let g:sneak#s_next = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

"cool prompts
let g:sneak#prompt ='🔎'

" remap so i can use , and ; with f and t.
map gh <Plug>Sneak_,
map gl <Plug>Sneak_;

