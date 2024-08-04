require("nvim-tree").setup {
  sort_by = "case_sensitive",
  view = {
	width = 30,
  },
  renderer = {
	group_empty = true,
  },
  filters = {
    git_ignored = false,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    no_bookmark = false,
    custom = {},
    exclude = {},
  },
}

vim.keymap.set('n','<C-b>',':NvimTreeToggle <CR>')
