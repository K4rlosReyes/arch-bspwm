-- Cargar el complemento null-ls
local null_ls = require("null-ls")

-- Configurar null-ls
null_ls.setup({
    sources = {
        -- Formatear automáticamente los archivos Python con black
        null_ls.builtins.formatting.black,
        -- Formatear automáticamente los archivos Rust con rustfmt
        null_ls.builtins.formatting.rustfmt,
        -- Formatear automáticamente los archivos Lua con lua-fmt
        null_ls.builtins.formatting.lua_format,

        null_ls.builtins.formatting.isort
    }
})
