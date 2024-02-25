vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local mapopts = { noremap = true, silent = true }

-- Navigate using ctrl+h/j/k/l in insert mode
map("i", "<C-h>", "<Left>", mapopts)
map("i", "<C-j>", "<Down>", mapopts)
map("i", "<C-k>", "<Up>", mapopts)
map("i", "<C-l>", "<Right>", mapopts)

-- Go to beginning and end of line in insert mode
map("i", "<C-b>", "<ESC>^i", mapopts)
map("i", "<C-e>", "<End>", mapopts)

-- Make 'dd' delete line without copying
map("n", "dd", '"_dd', { noremap = true })

-- Toggle comment in both modes
map("n", "<leader>c", ":CommentToggle<CR>", mapopts)
map("v", "<leader>c", ":CommentToggle<CR>", mapopts)

-- Open filetree
map("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})

-- Disable deselecting after yank in visual mode
map("v", "y", "ygv", { noremap = true })
