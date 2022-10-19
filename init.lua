require('nvim_tree_setup')
require('basic')
require('keybinding')
require('plugin')
require('treesitter')
require('terminal')
require('complete_config')
require('welcome')
require('status_bar')

vim.cmd("colorscheme gruvbox")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
