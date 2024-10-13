return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules/", "__pycache__" },
      hidden = true,
      no_ignore = true,
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
}
