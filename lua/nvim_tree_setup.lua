-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "<CR>", action = "edit"},
				{ key = "<", action = "dir_up"},
				{ key = ">", action = "cd"},
				{ key = "s", action = "vsplit"},
				{ key = "hs", action = "split"},
				{ key = "d", action = ""},
				{ key = "dd", action = "remove"},
				{ key = "v", action = ""},
				{ key = "mv", action = "rename"},
			},
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
			window_picker = {
				enable = false,
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
