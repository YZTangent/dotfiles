return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Target the pylsp server
      pylsp = {
        -- These are the settings sent to the pylsp server on initialization
        settings = {
          -- The pylsp server expects its config under a 'pylsp' key
          pylsp = {
            -- Configure pylsp's internal plugins
            plugins = {
              -- Target the pycodestyle plugin
              pycodestyle = {
                -- Pass a list of error codes to ignore
                ignore = { "E501", "E402" },
                -- You could add more, e.g.:
                -- ignore = { "E501", "W292" },
              },
            },
          },
        },
      },
    },
  },
}
