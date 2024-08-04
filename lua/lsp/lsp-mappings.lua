vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "gnr", vim.lsp.buf.rename)
vim.keymap.set("n", "gf", vim.lsp.buf.format)
vim.keymap.set("n", "gc", vim.lsp.buf.code_action)
vim.keymap.set("n", "ge", ":TroubleToggle <CR>")

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
