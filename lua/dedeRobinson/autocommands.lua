-- AutoCommands

-- format on save not norg though
vim.cmd [[au BufWritePre *\(.norg\|.txt\)\@<! lua vim.lsp.buf.format()]]

--auto help doc
vim.cmd [[
autocmd FileType help setlocal relativenumber number
autocmd FileType help wincmd H
]]

-- Norg Specific AutoCommands
vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'norg',
  callback = function()
    -- Map <M-p> to clear search highlighting
    vim.api.nvim_set_keymap('n', '<M-p>', ':noh<CR>', { noremap = true, silent = true })

    -- Get the current buffer's filename
    local filename = vim.api.nvim_buf_get_name(0)
    if filename:match 'journal' then
      vim.cmd 'set wrapmargin=45'
    end
  end,
})

-- Makes the neorg Journal Experience Great
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = 'journal*.norg',
  callback = function()
    vim.api.nvim_buf_set_lines(0, 0, 2, false, {
      'Journal - ' .. os.date '%m-%d-%Y' .. ' - Title',
      '--',
      os.date '%I:%M%p',
      '',
      '',
      'Gratitude:',
      '',
      'Improve:  ;Plan:',
      '',
      'Achievements: ',
      '',
      'Patience: ',
      '',
      'Affirmations: ',
    })
    vim.cmd ':call setcursorcharpos(1,100)'
  end,
})
