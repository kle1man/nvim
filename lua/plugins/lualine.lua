return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = function()
		-- Helper function to replace the "mode" module with the characters N/V/C/I rather than the full word
		function check_neovim_mode()
			local mode = vim.api.nvim_get_mode().mode
			if mode == "n" then
				return "N" -- normal mode
			elseif mode == "v" or mode == "V" then
				return "V" -- visual mode or v-line mode
			elseif mode == "c" then
				return "C" -- command-line mode
			elseif mode == "i" then
				return "I" -- insert mode
			else
				return "?" -- unknown mode
			end
		end

		require("lualine").setup({
			options = {
				theme = {
					normal = {
						cterm = { bg = "none", fg = "none" },
						gui = { bg = "none", fg = "none" },
					},
					insert = {
						cterm = { bg = "none", fg = "none" },
						gui = { bg = "none", fg = "none" },
					},
					visual = {
						cterm = { bg = "none", fg = "none" },
						gui = { bg = "none", fg = "none" },
					},
					replace = {
						cterm = { bg = "none", fg = "none" },
						gui = { bg = "none", fg = "none" },
					},
				},
				icons_enabled = true,
				component_separators = "",
				section_separators = "",
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { check_neovim_mode, "progress" },
				lualine_x = { "diagnostics", "diff", "branch" },
				lualine_y = {},
				lualine_z = {},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
