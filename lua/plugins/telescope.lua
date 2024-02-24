return {
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.5',
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', function() -- sets the keybind to open telescopes file search
                builtin.find_files({
                    attach_mappings = function(_, map)
                        map('i', '<C-j>', function(prompt_bufnr) -- binds ctrl-j to move down a line in the search
                            require('telescope.actions').move_selection_next(prompt_bufnr)
                        end)
                        map('i', '<C-k>', function(prompt_bufnr) -- binds ctrl-k to move up a line in the search
                            require('telescope.actions').move_selection_previous(prompt_bufnr)
                        end)
                        return true
                    end
                })
            end)
            vim.keymap.set('n', '<leader>fg', function() -- sets the keybind to open telescopes in-file search
                local current_buffer = vim.api.nvim_get_current_buf()
                builtin.current_buffer_fuzzy_find({
                    attach_mappings = function(_, map)
                        map('i', '<C-j>', function(prompt_bufnr) -- binds j to move down a line in the search
                            require('telescope.actions').move_selection_next(prompt_bufnr)
                        end)
                        map('i', '<C-k>', function(prompt_bufnr) -- binds k to move up a line in the search
                            require('telescope.actions').move_selection_previous(prompt_bufnr)
                        end)
                        return true
                    end
                })
            end)
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
