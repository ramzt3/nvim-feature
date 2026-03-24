require("trouble").setup()

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<CR>", {desc = "Open trouble workspace diagnostics"})
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<CR>", {desc = "Buffer Diagnostics"})
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix toggle focus=true<CR>", {desc = "Open trouble quickfix list"})
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle focus=true<CR>", {desc = "Open trouble location list"})
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble todo toggle focus=true<CR>", {desc = "Open todos in trouble"})
