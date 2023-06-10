require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {"rust", "lua", "python"},

    highlight = {enable = true, use_languagetree = true},
    indent = {enable = true}
}
