"--------------
" Plugins
"--------------
call plug#begin('~/.config/nvim/plugged')

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'lervag/vimtex'

  Plug 'ctrlpvim/ctrlp.vim' 
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter' "add the project concept to fzf. let you to search within whole project.

  " NerdTree setting
  " Plug 'scrooloose/nerdtree'
  " Plug 'Xuyuanp/nerdtree-git-plugin'
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  
  " Show indentation
  Plug 'Yggdroot/indentLine'

  " for general purpose development
  Plug 'tomtom/tcomment_vim'

  " These four seem to be together: <MarcWeber and tlib_vim> are 'snippets' Library
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'

  Plug 'majutsushi/tagbar'
  Plug 'mileszs/ack.vim'

  " Git in vim.
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'  
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " html
  Plug 'AndrewRadev/tagalong.vim'

  " for ruby/rails development
  " Plug 'vim-ruby/vim-ruby'
  " Plug 'tpope/vim-rails'
  " Plug 'thoughtbot/vim-rspec'

  " for vue.js development
  Plug 'leafOfTree/vim-vue-plugin'

  " for Pythone
  " Plug 'ycm-core/YouCompleteMe'
  Plug 'tell-k/vim-autopep8'
  Plug 'nvie/vim-flake8'
  Plug 'jiangmiao/auto-pairs'
  " Plug 'kien/rainbow_parentheses.vim'

  " color theme
  Plug 'rakr/vim-one'
  Plug 'chriskempson/base16-vim'
  Plug 'morhetz/gruvbox'
  " Plug 'lifepillar/vim-gruvbox8'
  " Plug 'ellisonleao/gruvbox.nvim'
  Plug 'HerringtonDarkholme/yats.vim' "TS Syntax
  Plug 'ntk148v/vim-horizon'
  Plug 'sheerun/vim-polyglot'
  Plug 'EdenEast/nightfox.nvim' " Vim-Plug
  Plug 'shaunsingh/nord.nvim'
  Plug 'overcache/NeoSolarized'

  " vim table quick format
  Plug 'dhruvasagar/vim-table-mode'

  " javascript syntax
  " Plug 'pangloss/vim-javascript'
  " Plug 'jelera/vim-javascript-syntax'
  " Plug 'neoclide/vim-jsx-improve'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'othree/yajs.vim'

  " css3 syntax highlight
  Plug 'hail2u/vim-css3-syntax'

  " cpp, c++ syntax highlight
  Plug 'octol/vim-cpp-enhanced-highlight'

  " highlight colors
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

  " Autocompletion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " file tree
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-icons'
  Plug 'ryanoasis/vim-devicons'
  Plug 't9md/vim-choosewin'
  Plug 'kristijanhusak/defx-git'

  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
  Plug 'preservim/vim-markdown'

  " Which key for all the keybindings
  Plug 'liuchengxu/vim-which-key'
  
  " Float Windows
  Plug 'voldikss/vim-floaterm'

  " Lazygit
  Plug 'jesseduffield/lazygit'

  " Quick Search for Text
  Plug 'justinmk/vim-sneak'

  " focus reading in vim
  Plug 'junegunn/goyo.vim'

  " Github copilot
  Plug 'github/copilot.vim'
  
  call plug#end()
