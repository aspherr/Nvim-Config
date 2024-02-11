local pin = require("harpoon.mark")
local gui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", pin.add_file)
vim.keymap.set("n", "<C-e>", gui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() gui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() gui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() gui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() gui.nav_file(4) end)

