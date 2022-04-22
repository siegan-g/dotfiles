
local map = vim.api.nvim_set_keymap
-- leader key
vim.g.mapleader = " " 
-- move windows with ctrl instead of ctrl+w
map('n','<C-h>','<C-w>h' , {noremap = true, silent = false})
map('n','<C-l>','<C-w>l' , {noremap = true, silent = false})
map('n','<C-j>','<C-w>j' , {noremap = true, silent = false})
map('n','<C-k>','<C-w>k' , {noremap = true, silent = false})
--  toggle nvim tree
vim.cmd('nnoremap <leader>n :NvimTreeToggle<CR>')
map('n','<leader>n',':NvimTreeToggle<CR>' , {noremap = true, silent = false})
-- indent in v-line
map('v','<','<gv',{noremap = true, silent = false})
map('v','>','>gv',{noremap = true, silent = false})

map("n","<C-u>", "<cmd>lua require ('lspsaga.action').smart_scroll_with_saga(-1)<cr>", {noremap = true, silent = true})
map("n","<C-d>", "<cmd>lua require ('lspsaga.action').smart_scroll_with_saga(1)<cr>", {noremap = true, silent = true})
