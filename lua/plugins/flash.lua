require('flash').setup()

vim.keymap.set("n", "ck", function()
    require('flash').jump()
end, { desc = "Flash"})
