require("toggleterm").setup{
	-- size can be a number or function which is passed the current terminal
	size = 20,
	function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	hide_numbers = true, -- hide the number column in toggleterm buffers
	start_in_insert = true,
	insert_mappings = false, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	direction = 'float', -- 'vertical' | 'horizontal' | 'window' |
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		-- The border key is *almost* the same as 'nvim_open_win'
		-- see :h nvim_open_win for details on borders however
		-- the 'curved' border is a custom border type
		-- not natively supported but implemented in this plugin.

		border = 'curved',

	}
}
