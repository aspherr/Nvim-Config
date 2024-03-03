return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "typescript-language-server",
        "css-lsp",
        "pyright",
        "clangd",
        "shfmt",
        "rust-analyzer",
        "jdtls",
        "lua-language-server",
      })
    end,
  },
}
