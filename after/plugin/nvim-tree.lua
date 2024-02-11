vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")

require("nvim-tree").setup()

