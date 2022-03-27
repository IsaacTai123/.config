"--------------
" Plugins
"--------------
call plug#begin('~/.config/nvim/plugged')

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter' "add the project concept to fzf. let you to search within whole project.

  " Show indentation
  Plug 'Yggdroot/indentLine'

  " for general purpose development
  Plug 'tomtom/tcomment_vim'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  Plug 'majutsushi/tagbar'
  Plug 'mileszs/ack.vim'
  Plug 'airblade/vim-gitgutter'

  " for ruby/rails development
  " Plug 'vim-ruby/vim-ruby'
  " Plug 'tpope/vim-rails'
  " Plug 'thoughtbot/vim-rspec'

  " for vue.js development
  Plug 'leafOfTree/vim-vue-plugin'

  " for Pythone
  " Plug 'ycm-core/YouCompleteMe'
  " Plug 'tell-k/vim-autopep8'
  " Plug 'nvie/vim-flake8'
  " Plug 'jiangmiao/auto-pairs'
  Plug 'kien/rainbow_parentheses.vim'

  " color theme
  " Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'

  " javascript syntax
  Plug 'pangloss/vim-javascript'

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

  " Markdown preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }


call plug#end()
