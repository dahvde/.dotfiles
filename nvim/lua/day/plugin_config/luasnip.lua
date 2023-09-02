local cmp = require("cmp")
local ls = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load({ paths = vim.fn.stdpath("config") .. "/snippets" })

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.scroll_docs(-1),
		["<C-j>"] = cmp.mapping.scroll_docs(1),
		["<C-o>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		-- ["<Tab>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			ls.lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})

vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/day/plugin_config/luasnip.lua<CR>")
