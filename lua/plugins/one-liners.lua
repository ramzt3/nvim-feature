require("ibl").setup({
    scope = { enabled = true },
})
require("treesj").setup()

-- replace treesj <leader>s
-- Replace the word cursor is on globally
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word cursor is on globally" })
