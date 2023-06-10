local present, telescope = pcall(require, "telescope")

if not present then return end

vim.g.theme_switcher_loaded = true

local options = {
    defaults = {
        vimgrep_arguments = {
            "rg", "-L", "--color=never", "--no-heading", "--with-filename",
            "--line-number", "--column", "--smart-case"
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8
            },
            vertical = {mirror = false},
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120
        },
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = {"node_modules"},
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = {"truncate"},
        winblend = 0,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        mappings = {n = {["q"] = require("telescope.actions").close}}
    },

    extensions_list = {"themes", "terms"}
}

-- check for any override
telescope.setup(options)

-- load extensions
pcall(function()
    for _, ext in ipairs(options.extensions_list) do
        telescope.load_extension(ext)
    end
end)

telescope.load_extension("file_browser")
telescope.load_extension("project")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.api.nvim_set_keymap('n', '<C-p>',
                        ":lua require'telescope'.extensions.project.project{}<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-e>",
                        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
                        {noremap = true})
