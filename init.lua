require("core")
-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --

-- IMPORTANT: nvim v0.12 is under active development.
-- Breaking changes can happen at any point in time.

-- Learn more about Neovim lua api
-- https://neovim.io/doc/user/lua-guide.html
-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/

-- plugins install
require("pack")

-- plugin configs
require("plugins.oil")
require("plugins.mini")
require("plugins.which-key")
require("plugins.lsp")
require("plugins.treesitter")
require("plugins.colorscheme")
require("plugins.blink")
require("plugins.mason")
require("plugins.autotag")
require("plugins.autopairs")
require("plugins.trouble")
require("plugins.wilder")
require("plugins.lazygit")
require("plugins.incline")
require("plugins.todo-comments")
require("plugins.one-liners")
require("plugins.gitsigns")
require("plugins.harpoon")
require("plugins.fidget")
-- require("plugins.flash")
