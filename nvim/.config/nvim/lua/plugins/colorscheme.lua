return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        -- floats = "transparent",
      },
      on_highlights = function(highlights, colors)
        highlights.LineNrAbove = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.LineNrBelow = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.StaticLineNC = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.SignColumn = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.SignColumnSB = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.TabLine = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.LspCodeLens = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.DiagnosticUnnecessary = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.NonText = { fg = "#999999" } -- Set the foreground color to light grey
        highlights.Comment = { fg = "#a1a7ca" } -- Set the foreground color to light grey
      end,
    },
  },
}

-- return {
--   {
--     "sainnhe/sonokai",
--     opts = {
--       flavour = "latte",
--       transparent_background = true,
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "sonokai",
--     },
--   },
-- }
--
-- return {
--   -- add gruvbox
--   {
--     "ellisonleao/gruvbox.nvim",
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         -- floats = "transparent",
--       },
--     },
--   },
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
