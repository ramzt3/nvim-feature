-- LSP setup
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

    local id = vim.tbl_get(event, 'data', 'client_id')
    local client = id and vim.lsp.get_client_by_id(id)

    if client and client:supports_method('textDocument/completion') then
      vim.bo[event.buf].omnifunc = 'v:lua.MiniCompletion.completefunc_lsp'
    end
  end,
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require',
                },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.enable({
	"svelte",
	"laravel_ls",
	"intelephense",
})
