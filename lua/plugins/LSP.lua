local function on_publish_diagnostics(_, _, params, client_id, _)
  local uri = params.uri
  if not uri then
    return
  end

  local bufnr = vim.uri_to_bufnr(uri)

  if not bufnr then
    return
  end

  local diagnostics = params.diagnostics

  -- Filter out the "declared package does not match the expected package" warning
  local filtered_diagnostics = {}
  for _, diagnostic in ipairs(diagnostics) do
    if diagnostic.message ~= "declared package does not match the expected package" then
      table.insert(filtered_diagnostics, diagnostic)
    end
  end

  vim.lsp.diagnostic.save(diagnostics, bufnr, client_id)

  vim.lsp.handlers["textDocument/publishDiagnostics"](nil, nil, {
    uri = uri,
    diagnostics = filtered_diagnostics,
  }, client_id, nil, nil, nil)
end

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })

      lspconfig.jdtls.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          vim.lsp.handlers["textDocument/publishDiagnostics"] = on_publish_diagnostics
        end,
      })

      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
    end,
  },
}
