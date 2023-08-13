if vim.g.neovide then
  -- Helper function for transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_transparency = 0.1
    vim.g.transparency = 0.0
    vim.g.neovide_background_color = "#0f1117" .. alpha()
    vim.o.guifont = "MesloLGSDZ Nerd Font Mono:h17"
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_theme = "auto"
end
