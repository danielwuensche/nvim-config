vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = false

require("config.options") -- load package manager
require("config.keymaps") -- load package manager
require("config.autocmd") -- load package manager

require("config.lazy") -- load package manager

require("config.autocmd_lsp") -- load package manager
