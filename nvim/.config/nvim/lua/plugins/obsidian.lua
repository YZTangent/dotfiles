return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- see below for full list of optional dependencies 👇
    "hrsh7th/nvim-cmp",
  },

  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/Notes",
      },
    },

    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },

    -- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this
    -- way then set 'mappings = {}'.
    mappings = {
      -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Enter key changed to follow link only
      ["<cr>"] = {
        action = function()
          if require("obsidian").util.cursor_on_markdown_link(nil, nil, true) then
            return "<cmd>ObsidianFollowLink<CR>"
          else
            return "<cr>"
          end
        end,
        opts = { buffer = true, expr = true },
      },
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      -- Create new obsidian note
      ["<leader>cn"] = {
        action = function() end,
        opts = { buffer = true },
      },
      -- Create or open the daily note for today
      ["<leader>cd"] = {
        action = function()
          return "<cmd>ObsidianToday<CR>"
        end,
        opts = { buffer = true },
      },
      -- Create or open the daily note for today
      ["<leader>ct"] = {
        action = function()
          return "<cmd>ObsidianTomorrow<CR>"
        end,
        opts = { buffer = true },
      },
      -- Create or open the daily note for tomorrow
      ["<leader>cy"] = {
        action = function()
          return "<cmd>ObsidianYesterday<CR>"
        end,
        opts = { buffer = true },
      },
    },
  },
}
