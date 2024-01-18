vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]]) --format on save
