return {
    "echasnovski/mini.starter",
    version = "*",
    config = function()
        require("mini.starter").setup({
            header = "kle1man/nvim", -- changes default greeting
            footer = "",    -- hides help section
            silent = true,  -- hides query keystrokes
        })
    end,
}