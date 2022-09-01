local vim = vim

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

packer.startup(function()
  local use = use

  -- add you plugins:
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'
  use 'nvim-treesitter/nvim-treesitter'
  use 'ellisonleao/gruvbox.nvim'
  use 'rktjmp/lush.nvim'
  use 'nvim-lua/completion-nvim'
  use {'junegunn/fzf', run = ':call fzf#install()' }
  use {'junegunn/fzf.vim'}
  end
)

require 'lsp'
require 'treesitter'

