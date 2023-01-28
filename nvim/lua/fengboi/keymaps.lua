vim.g.mapleader = " "

local keymap = vim.keymap

-- general stuff
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>jk", ":nohl<CR>")

-- move lines with alt
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")

keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")

keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

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

keymap.set("n", "<leader>.", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>,", ":tabp<CR>") --  go to previous tab

keymap.set("n", "<leader>tl", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>th", ":tabp<CR>") --  go to previous tab


keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>r", ":NvimTreeFocus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- git stuff
keymap.set("n", "<leader>ga", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
keymap.set("n", "<leader>g", ":Gitsigns toggle_current_line_blame<CR>")
