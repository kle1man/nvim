return { 
    "terrortylor/nvim-comment",
    config = function()
        require('nvim_comment').setup {
            marker_padding = true,
            comment_empty = false,
            comment_empty_trim_whitespace = true,
            create_mappings = false,
        }
    end
}
