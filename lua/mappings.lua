local map = vim.keymap.set

-- Default mappings
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Fast shortcuts
map("n", "<C-n>", ":enew<CR>", { desc = "Open new buffer" })
map("n", "<C-h>", ":NvimTreeToggle<CR>", { desc = "Toggle Tree explorer" })
map("n", "<C-w>", ":bdelete<CR>", { desc = "Close current buffer" })
map("n", "<C-W>", ":%bd|e#|bd#<CR>", { desc = "Close all buffers except current" })
map("n", "<C-s>", ":w<CR>", { desc = "Save current file" })

-- Files actions
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find file" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Find grep" })
map("n", "<leader>fr", ":Telescope replace_prompt<CR>", { desc = "Find and replace all files" })

-- Git actions
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "Toggle LazyGit" })
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle gitblame" })

-- Docker actions
map("n", "<leader>dd", ":LazyDocker<CR>", { desc = "Toggle LazyDocker" })

-- Terminal actions
map("n", "<leader>tt", ":terminal<CR>", { desc = "Open a terminal window" })
map("n", "<leader>tb", ":enew | terminal<CR>", { desc = "Open a new terminal buffer" })

-- Database actions
map("n", "<leader>db", ":terminal lazysql<CR>", { desc = "Open lazySQL" })

-- Editor actions
vim.cmd([[
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]])

map("n", "<Tab>", ":bnext<CR>", { desc = "Cycle to next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Cycle to previous buffer" })

map("n", "<leader>|", ":vsplit<CR>", { desc = "Split buffer vertically" })
map("n", "<leader>-", ":split<CR>", { desc = "Split buffer horizontally" })

map("n", "<leader>/", ":Commentary<CR>", { desc = "Toggle comment" })
map("v", "<leader>/", ":Commentary<CR>", { desc = "Toggle comment" })

-- Help action
map("n", "<leader>h", ":Telescope keymaps<CR>", { desc = "Display all keymaps" })

