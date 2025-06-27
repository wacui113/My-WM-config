vim.g.mapleader = " "
local keymap = vim.keymap

-- File explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- LSP
keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })

-- Terminal
keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })

