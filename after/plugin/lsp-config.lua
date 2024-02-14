require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "lua_ls", "clangd", "jdtls", "pylyzer"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = require('cmp_nvim_lsp').on_attach

require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach,
    capabilites = capabilities
}

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilites = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim"}
            }
        }
    },
}

require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilites = capabilities
}

require("lspconfig").jdtls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require("lspconfig").pylyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

