-- Treesitter setup
-- NOTE: the list of supported parsers is in the documentation:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
local ts_parsers = {
	'lua', 'vim', 'vimdoc', 'c', 'query',
	'html',
	'css',
	'blade',
	'svelte',
	'javascript',
	'typescript',
}

-- See :help ts-enable-config
vim.g.ts_enable = {
  parsers = ts_parsers,
  auto_install = true,
  highlights = true,
}

