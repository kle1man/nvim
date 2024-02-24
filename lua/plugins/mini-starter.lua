-- Note: this plugin is a modified version of echasnovski's mini.starter plugin. I didn't like the keybinding, and wanted to add some compatibility with neotree, so I edited it and uploaded it to my nvim configuration repository (kle1man/nvim) so that I could use it through lazy. Most of the credit goes to him, he's a wonderful developer.

return {
	"kle1man/nvim",
	requires = "custom/starter",
	config = function()
		require("custom.starter").setup({
			header = "kle1man/nvim", -- changes default greeting
			footer = "", -- hides help section
			silent = true, -- hides query keystrokes
		})
	end,
}
