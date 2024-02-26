return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        require("ibl").setup {}
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.ACTIVE, function(bufnr)
            return vim.tbl_contains(
                { "python", "java", "lua" }, -- enables ibl only in these files
                vim.api.nvim_get_option_value("filetype", { buf = bufnr })
            )
        end)
    end,
}
