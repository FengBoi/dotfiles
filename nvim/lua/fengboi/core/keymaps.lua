vim.g.mapleader = " "

local keymap = vim.keymap

-- general stuff
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>jk", ":nohl<CR>")

--increment stuff
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sd", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>ss", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>s=", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>s-", ":close<CR>") -- close current split window

keymap.set("n", "<leader>t=", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>t-", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>t.", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>t,", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
keymap.set("n", "<C-n>", ":NERDTree<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

