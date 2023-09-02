require("Comment").setup({
	{
		padding = true,
		sticky = true,
		ignore = nil,
		toggler = {
			line = "gcc",
			block = "gbc",
		},
		opleader = {
			line = "gc",
			block = "gb",
		},
		extra = {
			---Add comment on the line above
			above = "gcO",
			---Add comment on the line below
			below = "gco",
			---Add comment at the end of line
			eol = "gcA",
		},
		mappings = {
			basic = true,
			extra = true,
		},
		---Function to call before (un)comment
		pre_hook = nil,
		---Function to call after (un)comment
		post_hook = nil,
	},
})
