return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "lua-language-server",
      "python-lsp-server",
      "rust-analyzer",
      "svelte-language-server",
      "codelldb",
      "clangd",
    },
  },
}
