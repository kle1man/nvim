return {
    "cohama/lexima.vim",
    config = function()
        vim.cmd("call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'markdown'})")
        vim.cmd("call lexima#add_rule({'char': '$', 'at': '\\%#\\$', 'leave': 1, 'filetype': 'markdown'})")
        vim.cmd("call lexima#add_rule({'char': '<BS>', 'at': '\\$\\%#\\$', 'delete': 1, 'filetype': 'markdown'})")
    end,
}
