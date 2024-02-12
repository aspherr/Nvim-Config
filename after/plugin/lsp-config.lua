require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "lua_ls", "clangd", "jdtls", "pylyzer"}
})

require("lspconfig").rust_analyzer.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").pylyzer.setup {}

