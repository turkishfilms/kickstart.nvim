---------REMAPPINGS/KEYBINDS----------

--------LEADER------
vim.g.mapleader = ' '
-------NORMAL--------
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>W', ':wa<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>x', ':x<CR>') --Write and Quit i found this out on 1-23-24 2:44pm
vim.keymap.set('n', '<leader>p', ':silent! Ex<CR>')
-- vim.keymap.set('n', '<leader>t', ':tabe<CR>')
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')                                     --Vertical split
vim.keymap.set('n', '<leader>b', ':split<CR>')                                      --Horizontal split
vim.keymap.set('n', '<leader>,', ':Vex<CR>:term<CR>')                               --Create Terminal
vim.keymap.set('n', '<leader>z', '$zf%')                                            --Auto Fold Braces
vim.keymap.set('n', '<leader><C-l>', ':luafile %<CR>')                              --Run Current Luafile
vim.keymap.set('n', '<leader>D', ':lua print(os.date())<CR>')                       --Show Date/Time
vim.keymap.set('n', '<leader>e', ':e journal<C-r>=strftime("%m%d%Y")<CR>.norg<CR>') --Make new journal entry w date

------------------LINESHIFT------------------|-prime
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") --Alt down (Moves Selection down)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") --Alt Up (Moves Selection up)

-----------------------GIT--------------------------|
vim.keymap.set('n', '<leader>ga', ':silent! G add .<CR>')     --git add all
vim.keymap.set('n', '<leader>gk', ':silent! G commit<CR>')    --git commit
vim.keymap.set('n', '<leader>go', ':G push origin ')          --git push
vim.keymap.set('n', '<leader>gi', ':G push<CR>')              --git push
vim.keymap.set('n', '<leader>gh', ':silent! G checkout ')     --git checkout
vim.keymap.set('n', '<leader>gb', ':silent! G checkout -b ')  --git branch
vim.keymap.set('n', '<leader>gp', ':G pull --all <CR>')       --git pull everything (maybe fetch instead)
vim.keymap.set('n', '<leader>gm', ':G merge origin ')         --git pull everything
vim.keymap.set('n', '<leader>gs', ':G<CR>')                   --git status
vim.keymap.set('n', '<leader>gc', ':silent! G commit -a<CR>') --git add all
vim.keymap.set('n', '<leader>gl', ':G log<CR>')               --git log
vim.keymap.set('n', '<leader>gt', ':G add %<CR>')             --git add this file
--DIFS--
vim.keymap.set('n', '<leader>dl', ':diffget LO<CR>]czz')      --Grab From Local
vim.keymap.set('n', '<leader>db', ':diffget BA<CR>]czz')      --Grab From Base
vim.keymap.set('n', '<leader>dr', ':diffget RE<CR>]czz')      --Grab From Remote

-------INSERT--------
vim.keymap.set('i', 'jj', '<Esc>')         --Home Row Normal Mode
vim.keymap.set('i', 'jk', '<Esc>')         --Home Row Normal Mode
vim.keymap.set('i', '<C-ENTER>', '<Esc>o') --New Line
------------AUTOSURROUND------------
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
---------TERMINAL----------
vim.keymap.set('t', ':q', '<CR>exit<CR>')         --Close Terminal EZ
vim.keymap.set('t', ':w', '<C-|><C-n><C-w><C-w>') --Exit Terminal EZ
vim.keymap.set('t', ':W', '<C-|><C-n><C-w><C-w>') --Exit Terminal EZ
vim.keymap.set('t', '<leader>w', '<C-|><C-n>')    --Exit Terminal EZ (maybe change this, lol, you may want to type SPACE w at some point, #from the future: just type it slowly?)

---------EX COMMAND ALIAS----------
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})
