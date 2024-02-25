return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    config = function()
        vim.g.mkdp_auto_start = 1 -- automatically opens the preview when a markdown file is opened
        vim.g.mkdp_browser = 'safari' -- changes the default browser to launch the preview in to safari
    end,
}
