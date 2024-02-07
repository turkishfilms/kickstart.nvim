vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]]) --format on save
vim.cmd([[
autocmd FileType help setlocal relativenumber number
autocmd FileType help wincmd H
]]) --auto help doc
