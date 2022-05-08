require'lspconfig'.jedi_language_server.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    root_dir = function()
        return vim.fn.getcwd()
    end,
    on_attach = require 'lsp/on_attach',
}
