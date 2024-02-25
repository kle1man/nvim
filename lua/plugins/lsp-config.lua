return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ltex", "jdtls", "marksman", "pyright" }, -- installs lsps and formatters
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities }) -- lua lsp
			lspconfig.ltex.setup({ capabilities = capabilities }) -- latex lsp
			lspconfig.jdtls.setup({ capabilities = capabilities }) -- java lsp
			lspconfig.marksman.setup({ capabilities = capabilities }) -- markdown lsp
			lspconfig.pyright.setup({ capabilities = capabilities }) -- python lsp

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- pops up information about what's under the cursor
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- moves cursor to code definition
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- opens code actions
		end,
	},
}
