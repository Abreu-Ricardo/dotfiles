require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd" , "gopls", "quick_lint_js", "markdown_oxide", "mesonlsp", "sqls"},
})


local on_attach = function(_, _)
   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {}) 
   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) 
   
   vim.keymap.set('n', 'f', vim.lsp.buf.definition, {}) 
   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation , {}) 
   vim.keymap.set('n', 'T', require('telescope.builtin').lsp_references, {}) 
   vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) 
end



require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}



