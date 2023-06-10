local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {expand = function(args) luasnip.lsp_expand(args.body) end},

    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-Space>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false
        }
    },
    sources = {
        {name = "nvim_lsp"}, {name = "luasnip"}, {name = "buffer"},
        {name = "nvim_lua"}, {name = "path"}
    }
})
