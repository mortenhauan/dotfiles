vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--general keymaps

-- keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>u", ":e!<CR>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- got to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>e", ":NeoTreeFocusToggle<CR>")
keymap.set("n", "<leader>f", ":NeoTreeFloatToggle<CR>")

-- telescop
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- copilot
keymap.set("n", "<leader>co", "<cmd>Copilot panel<cr>")

-- format file
keymap.set("n", "<leader>rf", "<cmd>lua vim.lsp.buf.format()<cr>")
keymap.set("n", "<leader>rr", "<cmd>lua vim.lsp.buf.range_formatting()<cr>")

-- move lines
keymap.set("n", "<leader>aj", ":m .+1<CR>")
keymap.set("n", "<leader>ak", ":m .-2<CR>")
keymap.set("v", "<leader>aj", ":m .+1<CR>")
keymap.set("v", "<leader>ak", ":m .-2<CR>")
