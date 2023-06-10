require("trouble").setup {}

-- Lua
vim.keymap.set("n", "<C-x>x", "<cmd>TroubleToggle<cr>",
               {silent = true, noremap = true})
vim.keymap.set("n", "<C-x>w", "<cmd>TroubleToggle workspace_diagnostics<cr>",
               {silent = true, noremap = true})
vim.keymap.set("n", "<C-x>d", "<cmd>TroubleToggle document_diagnostics<cr>",
               {silent = true, noremap = true})
vim.keymap.set("n", "<C-x>l", "<cmd>TroubleToggle loclist<cr>",
               {silent = true, noremap = true})
vim.keymap.set("n", "<C-x>q", "<cmd>TroubleToggle quickfix<cr>",
               {silent = true, noremap = true})
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
               {silent = true, noremap = true})
