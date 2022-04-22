
vim.g.nvim_tree_indent_markers = 1
require'nvim-tree'.setup({
  auto_close = true,
  update_to_buf_dir  = {
    enable = true,
    auto_open = true,
  },
  git = { 
    ignore = true,
  }, 
  view = {
    width = 25
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
})
    

