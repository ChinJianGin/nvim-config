require('lualine').setup({
	options = {
		disabled_filetypes = {'NvimTree', "lspsagaoutline"},
	winbar = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {}
	}

	},
	tabline = {
  lualine_a = {'buffers'},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
	},
})
