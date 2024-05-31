-- leader key
vim.g.mapleader = " "

local keys = vim.keymap --for conciseness

--dont want this
-- keys.set("i", "jk", "<ESC>", {desc = "Exit Insertmode with jk"})

keys.set("n", "<ESC>", ":nohl<CR>", { desc = "clear search highlights" })

-- incrementing/decrementing
keys.set("n", "<leader>+", "<C-a>", { desc = "increment Number" })
keys.set("n", "<leader>-", "<C-x>", { desc = "decrement Number" })

-- window control
keys.set("n", "<leader>wv", "<C-w>v", { desc = "split window vertically" })
keys.set("n", "<leader>ws", "<C-w>s", { desc = "split window horizontally" })
keys.set("n", "<leader>we", "<C-w>=", { desc = "make split equal in size" })
keys.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "close current split" })

keys.set("n", "<C-h>", "<C-w><C-h>", { desc = "move focus to the left split" })
keys.set("n", "<C-j>", "<C-w><C-j>", { desc = "move focus to the lower split" })
keys.set("n", "<C-k>", "<C-w><C-k>", { desc = "move focus to the upper split" })
keys.set("n", "<C-l>", "<C-w><C-l>", { desc = "move focus to the right split" })

-- moving the cursor
keys.set("n", "<C-d>", "<C-d>zz", { desc = "move down" })
keys.set("n", "<C-u>", "<C-u>zz", { desc = "move up" })

-- learn vim you lazy asshole
keys.set("n", "<left>", '<cmd>echo "Use hjkl to move!!"<CR>')
keys.set("n", "<right>", '<cmd>echo "Use hjkl to move!!"<CR>')
keys.set("n", "<up>", '<cmd>echo "Use hjkl to move!!"<CR>')
keys.set("n", "<down>", '<cmd>echo "Use hjkl to move!!"<CR>')
