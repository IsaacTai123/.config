"=================
" key mapping
"=================
let mapleader = ","
let maplocalleader = "\<Space>"

"=================
" appearance
"=================
set cmdheight=1        " default set terminal to 1
set number             " show line number
set relativenumber
set noshowmode         " disable mode(because of Vim-Airline)
set showcmd            " display command
set nolist             " do not display invisible characters
set wrap               " if the line go off the screen it will appears on the next line
set linebreak
set cursorline
set incsearch          " stands for incremental search while you search you actually get results highlight.
set ignorecase         " ignore the case sensitive
" set cursorcolumn
" set cursorcolumn cterm=none ctermbg=21 ctermfg=White
set ruler
set showtabline=4     "Tab Line 永遠都開著 即便只有一個檔案 2 = always
set shortmess=I       " remove splash wording
set equalalways       " split windows are always equal size
set statusline+=%F    " show path in vim
let &showbreak='↳ '
set conceallevel=0    " so i can see `` in markdown file
set nobackup          " this is recommand by coc
set nowritebackup     " this is recommand by coc
set wildmenu
set wildmode=full,full
" set backspace=2       " enable backspace回刪
set backspace=indent,eol,start  "https://til.hashrocket.com/posts/f5531b6da0-backspace-options
set previewheight=15
set pumheight=6       " Set pop up windows max hieght
set spell "enable spellchecking
"set undofile=~/.vim/undodir  "directory where my undofile will be.

" for markdown syntax
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown


"=================
" Folding Options
"=================
set foldmethod=manual
set foldnestmax=3
set foldlevel=99
set nofoldenable  " disable folding by default

"=================
" split window
"=================
set splitbelow    " open a horizontally windows it will show at the bottom
set splitright    " open a vertically windows it will show at the right side

"=================
" Scroll
"=================
set scrolloff=5

"=================
" Tab and space
" (set tab key to 4 space)
"=================
set softtabstop=2    
set shiftwidth=2     "setting the > only will take 2 space
set expandtab        " Converts tabs to space
" set tabstop=4      "tabstop means 4 characters, 
" set softtabstop=0  "softtabstop means 4 spaces
" set noexpandtab    "no converted from a tab character to spaces.
" set shiftwidth=4
" set smartindent    "means it will try its best job to indent for you
filetype plugin indent on

"=================
" ColorScheme
"=================
set t_Co=256  " Number of colors
" set termguicolors
syntax on     " give you some basic highlighting
syntax enable

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


" let g:solarized_termcolors=256
try
  set background=dark
  " colorscheme gruvbox
  " colorscheme nightfox
  " colorscheme one
  " colorscheme wombat256
  " " colorscheme janah
  " colorscheme railscasts
  " colorscheme molokai
  " colorscheme solarized
  " colorscheme base16-solarized-dark
  " colorscheme NeoSolarized
  " colorscheme nordfox
  colorscheme base16-onedark
  " colorscheme zenburn
  " highlight EndOfBuffer cterm=NONE ctermfg=bg guibg=NONE ctermbg=NONE
catch
endtry

" autocmd BufEnter *.html silent :colorscheme base16-gruvbox-dark-medium
" autocmd BufLeave *.html silent :colorscheme gruvbox


"=================
" Sound
"=================
" disable sound on errors
set visualbell
set noerrorbells  "turn off the errorbells
set t_vb=
set tm=500

"=================
" Netrw
"=================
let g:netrw_liststyle = 3
let g:netrw_banner = 0

"=================
" Settings
"=================
set nocompatible
set clipboard=unnamed " 就可以讓yank 複製的東西也貼到剪貼版 讓兩邊可以通用
set noswapfile        " don't create a .swp file
set hidden
set nobomb            " no BOM(Byte Order Mark)
set mouse=a
set omnifunc=syntaxcomplete#Complete  " 這個可以讓你啟用vim 自帶的autocomplete. 要啟用這個功能我們要用 ctrl+x+o && ctrl+n

"=================
" Filetype and Encoding
"=================
filetype on           " this will open the filetype search auto
filetype indent on    "this will see what the filetype it is and us the indentation of that filetype
filetype plugin on    "根據程式語言種類載入相對的外掛plugin

"=================
" file encoding
"=================
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


"=================
"change background to transparent
"=================
" hi Normal guibg=NONE ctermbg=NONE

"=================
"tags Settings
"=================
" set tags=$HOME/tags


"--------------
" search
"--------------
set hlsearch    " highlight matching characters while search
set ignorecase  " case insensitive while searching
set incsearch   " incremental search
set smartcase   " search will be case-sensitive while searching with some upper case characters.

" cancel search highlight if hit enter key after searching
nnoremap <Enter> :nohlsearch<Enter><Enter>


