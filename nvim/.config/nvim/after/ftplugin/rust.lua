local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>aa", function()
  vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr, desc = "Rust Actions" })

vim.keymap.set("n", "<leader>ad", function()
  vim.cmd.RustLsp("debug")
end, { silent = true, buffer = bufnr, desc = "Debug Rust" })

vim.keymap.set("n", "<leader>aD", function()
  vim.cmd.RustLsp("debuggables")
end, { silent = true, buffer = bufnr, desc = "Debuggables Rust" })
