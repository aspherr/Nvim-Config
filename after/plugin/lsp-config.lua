require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "lua_ls", "clangd", "jdtls", "pylyzer"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").rust_analyzer.setup {
    capabilites = capabilities
}

require("lspconfig").lua_ls.setup {
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
    capabilites = capabilities
}

require("lspconfig").jdtls.setup {
    capabilities = capabilities
}

require("lspconfig").pylyzer.setup {
    capabilities = capabilities
}

