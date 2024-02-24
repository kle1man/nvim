return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ltex", "jdtls", "marksman", "pyright" }, -- installs lsps and formatters
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})                                     -- lua lsp
            lspconfig.ltex.setup({})                                       -- latex lsp
            lspconfig.jdtls.setup({})                                      -- java lsp
            lspconfig.marksman.setup({})                                   -- markdown lsp
            lspconfig.pyright.setup({})                                    -- python lsp

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})                -- pops up information about what's under the cursor
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})          -- moves cursor to code definition
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- opens code actions
        end,
    },
}
