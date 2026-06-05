local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- left window
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- up window
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- down window
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- right window

-- resize with arrows when using multiple windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<c-down>", ":resize +2<cr>", opts)
vim.keymap.set("n", "<c-right>", ":vertical resize -2<cr>", opts)
vim.keymap.set("n", "<c-left>", ":vertical resize +2<cr>", opts)


-- bufferline
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- nvim-tree
vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<leader>ew", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" }) -- refresh file explorer

