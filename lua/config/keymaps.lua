-- neotree bindings
vim.keymap.set("n", "<C-n>", ":Neotree reveal filesystem left<CR>")
vim.keymap.set("n", "<C-m>", ":Neotree close<CR>")

-- harpoon bindings
local harpoon = require("harpoon")
harpoon:setup({})

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end)

vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- pin 1
vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end)

-- pin 2
vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(2)
end)

-- pin 3
vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(3)
end)

-- pin 4
vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(4)
end)
