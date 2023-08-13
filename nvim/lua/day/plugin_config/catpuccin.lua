require("catppuccin").setup {
    flavour = "mocha",
    color_overrides = {
    },
    integrations = {
        nvimtree = true,
        telescope = true,
    },
    highlight_overrides = {
        mocha = function(mocha)
            return {
                NvimTreeNormal = { bg = mocha.none },
                TelescopeNormal = { bg = mocha.none }
            }
        end,
    },
}
