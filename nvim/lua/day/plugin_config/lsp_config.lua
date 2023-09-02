local lsp = require("lsp-zero")

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
	"rust_analyzer",
	"gopls",
	"clangd",
})

local cmp = require("cmp")
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<Tab>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

local cmp_window = {
	completion = cmp.config.window.bordered(),
	documentation = cmp.config.window.bordered(),
}

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.set_preferences({
	sign_icons = {
		error = "",
		warn = "",
		info = "",
		hint = "",
	},
})

--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings,
--window = cmp_window
--})

cmp.setup({
	mapping = cmp_mappings,
	window = cmp_window,
})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts)
end)

lsp.setup()

lsp.set_sign_icons({
	error = "",
	warn = "",
	hint = "",
	info = "",
})

vim.diagnostic.config({
	virtual_text = true,
})

lspconfig.lua_ls.setup({
	capabilities = lsp_capabilities,
})

lspconfig.rust_analyzer.setup({
	capabilities = lsp_capabilities,
})

lspconfig.gopls.setup({
	capabilities = lsp_capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
})
require("mason").setup()

-- require("lsp-colors").setup({
-- 	Error = "#db4b4b",
-- 	Warning = "#db4b4",
-- 	Information = "#0db9d7",
-- 	Hint = "#10B981",
-- })
