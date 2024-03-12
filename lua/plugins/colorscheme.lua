return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = true,
      terminalColors = true,

      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },

      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
    })

    vim.cmd([[autocmd ColorScheme * highlight clear LineNr]])
    vim.cmd([[autocmd ColorScheme * highlight LineNr guibg=#1F1F28]])
  end,
}
