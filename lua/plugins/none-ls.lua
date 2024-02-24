return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua formatting
				null_ls.builtins.formatting.stylua,
				-- python formatting
				null_ls.builtins.formatting.black,
                -- markdown (and more) formatting
                null_ls.builtins.formatting.prettier,
                -- java formatting
                null_ls.builtins.formatting.google_java_format,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
