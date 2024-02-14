require'nvim-treesitter.configs'.setup {

    -- a list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "cpp", "lua", "python", "java", "vim", "vimdoc", "query" },

    -- install parsers synchronously
    sync_install = false,

    -- automatically install missing parsers when entering buffer
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
