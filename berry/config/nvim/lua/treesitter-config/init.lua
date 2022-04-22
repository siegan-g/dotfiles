vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"html","javascript","lua","java"},
  highlight = {
    -- `false` will disable the whole extension
   enable = true,
   additional_vim_regex_highlighting = false,
  },
  autotag ={ 
    enabled = true,
    },
    autopair ={
      enabled = true
    }
}
