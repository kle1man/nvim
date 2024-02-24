vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'} -- enable completion functionality
vim.opt.mouse = 'a' -- enable mouse functionality in Nvim

vim.opt.tabstop = 4 -- sets the width of a tab character to 4 spaces
vim.opt.softtabstop = 4 -- sets the width of a <Tab> key press to 4 spaces
vim.opt.shiftwidth = 4 -- sets the width of auto-indent to 4 spaces
vim.opt.expandtab = true -- configures Nvim to use spaces instead of tabs for indentation

vim.opt.number = true -- enables line numbers
vim.opt.relativenumber = true -- changes line numbers to be relative
vim.opt.termguicolors = true -- enables 24-bit color in the TUI
vim.opt.showmode = false -- hides the mode hints

vim.opt.incsearch = true -- searches as characters are entered
vim.opt.hlsearch = false -- disable highlighting searches
vim.opt.ignorecase = true -- ignores case sensitivity in searches
vim.opt.smartcase = true -- makes the search case sensitive if an uppercase character is entered
