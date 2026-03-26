-- Treesitter setup
-- NOTE: the list of supported parsers is in the documentation:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
local ts_parsers = {
	'lua',
    'vim',
    'vimdoc',
    'c',
    'query',
	'html',
	'css',
	'blade',
	'svelte',
	'javascript',
	'typescript',
	'python',
}


require('nvim-treesitter').install {
	'lua',
    'vim',
    'vimdoc',
    'c',
    'query',
	'html',
	'css',
	'blade',
	'svelte',
	'javascript',
	'typescript',
	'python',
}

-- vim.filetype.add({
--     extension = {
--         blade = "blade",
--     },
--     pattern = {
--         ['.*%.blade%.php'] = 'blade',
--     },
-- })
--
-- vim.lsp.config['laravel_ls'] = {
--     filetypes = { 'blade' },
-- }

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'php', 'blade' },
    callback = function ()
        vim.treesitter.start()
    end
})

-- See :help ts-enable-config
vim.g.ts_enable = {
  parsers = ts_parsers,
  auto_install = true,
  highlights = true,
  -- indents = true,
}

