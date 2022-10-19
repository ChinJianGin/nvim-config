-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		['<CR>'] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace })
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
		{ name = 'buffer' },
		{ name = 'path' }
	}
})

-- Setup lspconfig.
local ls = { 'clangd', 'pyright', 'sumneko_lua', 'rust_analyzer'}
for i, server in ipairs(ls) do
	require('lspconfig')[server].setup {
		on_attach = on_attach,
		capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
	}
end

require('lspconfig').sumneko_lua.setup {
	settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "use" },
      },
		}
	}
}

vim.opt.completeopt = {"menu", "menuone", "noselect"}

-- set lspsaga
require('lspsaga').init_lsp_saga({
	border_style = "single",
})
