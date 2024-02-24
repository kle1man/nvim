return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup{
            ensure_installed = {"lua", "gitignore", "java", "latex", "markdown_inline", "python"},
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
