return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "rust",
      "lua",
      "python",
      "java",
      "javascript",
      "typescript",
      "html",
      "css",
      "sql",
      "go",
      "cmake",
      "gitignore",
    },

    auto_install = true,

    highlights = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
