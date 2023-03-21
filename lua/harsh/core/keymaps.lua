vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "fj", "<ESC>")

-- backspace
keymap.set("i", "<C-h>", "<C-w>")

-- goto start and end
keymap.set("n", "L", "$")
keymap.set("n", "H", "0")
keymap.set("n", "U", "<C-d>")
keymap.set("n", "I", "<C-u>")

-- clear highlight after search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- increment and decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- split window
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontal
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical
keymap.set("n", "<leader>se", "<C-w>=") -- make equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close window

-- manage tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- goto next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- goto previous tab

-- plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--keymaps
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
keymap.set("n", "<leader>fc", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>fs", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
