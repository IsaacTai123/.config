local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
  }
  use {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.0',
	requires = { { 'nvim-lua/plenary.nvim'} }
  }
  use 'voldikss/vim-floaterm'
  -- Lua
  use "folke/which-key.nvim"
  use "justinmk/vim-sneak"
  use "tpope/vim-surround"
  -- Autocompletion
  use "hrsh7th/nvim-cmp" -- Auto completion engine plugin for nvim
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path" -- auto completion when it comes to path
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" -- snip engine
  use "saadparwaiz1/cmp_luasnip" -- allow nvim-cmp to show autocomplition
  use "rafamadriz/friendly-snippets" -- a lot of useful snippet for a lot of language

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
