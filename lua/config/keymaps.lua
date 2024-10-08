-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.keymap.set

-- Select complete document
keymap("n", "<C-a>", "ggVG", opts)

-- Resize window with +/-
keymap("n", "-", "<C-w>5<", opts)
keymap("n", "+", "<C-w>5>", opts)

-- `jj` to exit insert mode without hitting Esc
keymap("i", "jj", "<Esc>", opts)

-- keep indents active
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move lines up/down
keymap("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move current line up" })
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current line down" })

-- 'H'/'L' to jump start/end of line
keymap("n", "H", "^", { desc = "Move cursor to start (first char) of line" })
keymap("n", "L", "$", { desc = "Move cursor to end (last char) of line" })

-- Dhruvmanila/browser-bookmarks.nvim
keymap("n", "<leader>bb", ":Telescope bookmarks<CR>", { desc = "Search Brave Bookmarks" })
