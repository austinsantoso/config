local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

    -- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- left window
keymap("n", "<C-k>", "<C-w>k", opts) -- up window
keymap("n", "<C-j>", "<C-w>j", opts) -- down window
keymap("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
keymap("n", "<a-Up>", ":resize -2<CR>", opts)
keymap("n", "<a-down>", ":resize +2<cr>", opts)
keymap("n", "<a-right>", ":vertical resize -2<cr>", opts)
keymap("n", "<a-left>", ":vertical resize +2<cr>", opts)


-- navigate buffers
keymap("n", "<tab>", "<cmd>tabnext<cr>", opts) -- Next Tab
keymap("n", "<s-tab>", "<cmd>tabprevious<cr>", opts) -- Previous tab

-- search / highlight
keymap("n", "<leader>h", ":nohlsearch<cr>", opts) -- No highlight search
keymap("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = false })

-- move text up and down
--keymap("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j 
-- keymap("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert --
-- press jk fast to exit insert mode 
-- keymap("i", "jk", "<esc>", opts) -- Insert mode -> jk -> Normal mode
-- keymap("i", "kj", "<esc>", opts) -- Insert mode -> kj -> Normal mode

-- visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts) -- Right Indentation
keymap("v", ">", ">gv", opts) -- Left Indentation

-- search stays in the middle
-- zz move line to center
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)


-- keymap("v", "<a-j>", ":m .+1<cr>==", opts)
-- keymap("v", "<a-k>", ":m .-2<cr>==", opts)


-- Visual Block --
-- Move text up and down
    --Terminal --
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts) -- Move code block and format
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts) -- Move code block and format
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

