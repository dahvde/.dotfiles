function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.opt.background = "dark"
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
	vim.cmd([[
    augroup MyColorScheme
        autocmd!
        autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
        highlight clear LineNr
        highlight clear SignColumn
        highlight DiagnosticWarn guifg=#ff8400
        highlight DiagnosticVirtualTextWarn guifg=#ff8400 guibg=none
        highlight DiagnosticVirtualTextError guibg=NONE
        highlight DiagnosticVirtualTextInfo guibg=NONE
        highlight DiagnosticVirtualTextHint guibg=NONE
        highlight DiagnosticVirtualTextOk guibg=NONE
        highlight TabLine guibg=NONE
    augroup END
    ]])
end

-- Default options
-- require("nightfox").setup({
-- 	options = {
-- 		-- Compiled file's destination location
-- 		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
-- 		compile_file_suffix = "_compiled", -- Compiled file suffix
-- 		transparent = true, -- Disable setting background
-- 		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
-- 		dim_inactive = false, -- Non focused panes set to alternative background
-- 		module_default = true, -- Default enable value for modules
-- 		colorblind = {
-- 			enable = false, -- Enable colorblind support
-- 			simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
-- 			severity = {
-- 				protan = 0, -- Severity [0,1] for protan (red)
-- 				deutan = 0, -- Severity [0,1] for deutan (green)
-- 				tritan = 0, -- Severity [0,1] for tritan (blue)
-- 			},
-- 		},
-- 		styles = { -- Style to be applied to different syntax groups
-- 			comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
-- 			conditionals = "NONE",
-- 			constants = "NONE",
-- 			functions = "NONE",
-- 			keywords = "NONE",
-- 			numbers = "NONE",
-- 			operators = "NONE",
-- 			strings = "NONE",
-- 			types = "NONE",
-- 			variables = "NONE",
-- 		},
-- 		inverse = { -- Inverse highlight for different types
-- 			match_paren = false,
-- 			visual = false,
-- 			search = false,
-- 		},
-- 		modules = { -- List of various plugins and additional options
-- 			-- ...
-- 		},
-- 	},
-- 	palettes = {
-- 		carbonfox = {
-- 			bg1 = "#191a24",
-- 			bg0 = "#212126",
-- 		},
-- 	},
-- 	specs = {},
-- 	groups = {},
-- })

vim.g.oxocarbon_lua_transparent = true
vim.g.oxocarbon_lua_alternative_telescope = true
-- setup must be called before loading
vim.g.t_Co = 256
vim.g.enfocado_style = "neon"

ColorMyPencils("enfocado")
