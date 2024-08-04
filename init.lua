-- basic config
require('basic-config')

-- plugin manager setting
require('lazy-plug')

-- plugins settings
require('plugins.themes')
require('plugins.nvim-tree-config')
require('plugins.lualine-config')
require('plugins.treesitter-config')
require('plugins.toggle-terminal')
require('plugins.gitsigns')

-- lsp settings
require('lsp.mason-config')
require('lsp.lsp-mappings')
require('lsp.lsp-config')
require('lsp.lsp-zero-config')
require('plugins.fidget')
