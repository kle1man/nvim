-- Note: this is an archived plugin, I don't know how long it'll stick around before breaking...

return {
	"jcdickinson/wpm.nvim",
	config = function()
		require("wpm").setup({
            sample_count = 3,
            sample_interval = 1000,
            percentile = 1,
		})
	end,
}
