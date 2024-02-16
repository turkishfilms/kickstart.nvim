---------REMAPPINGS/KEYBINDS----------

--------LEADER------
vim.g.mapleader = " "
-------NORMAL--------
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>p", ":Ex<CR>")
vim.keymap.set("n", "<leader>t", ":tabe<CR>")
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")                 --Vertical split
vim.keymap.set("n", "<leader>b", ":split<CR>")                  --Horizontal split
vim.keymap.set("n", "<leader>,", ":Vex<CR>:term<CR>")           --Create Terminal
vim.keymap.set("n", "<leader>z", "$zf%")                        --Auto Fold Braces
vim.keymap.set("n", "<leader>r", ":s/")                         --Start Substitue Command
vim.keymap.set("n", "<leader>f", ":find ")                      --Start Substitue Command
vim.keymap.set("n", "<leader>e", ":e ")                         --Create New File
vim.keymap.set("n", "<leader>h", ":Telescope help_tags<CR>")    --Search Help Docs
vim.keymap.set("n", "<leader>l", ":Telescope live_grep<CR>")    --Live Grep Easy
vim.keymap.set("n", "<leader><C-l>", ":luafile %<CR>")          --Run Current Luafile
vim.keymap.set("n", "<leader>n", ":w<CR><C-W>wi<Up><CR>")       --Run Current js in node
vim.keymap.set("n", "<leader>x", ":x<CR>")                      --Write and Quit i found this out on 1-23-24 2:44pm

vim.keymap.set("n", "<leader>m", ":mksession vimbook.vim<CR>")  --Auto Make session
vim.keymap.set("n", "<leader><C-m>", ":source vimbook.vim<CR>") --Auto Load session
------------------LINESHIFT------------------|
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")                    --Alt down (Moves Selection down)
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")                    --Alt Up (Moves Selection up)

-----------------------GIT--------------------------|
vim.keymap.set("n", "<leader>ga", ":G add .<CR>")        --git add all
vim.keymap.set("n", "<leader>gc", ":G commit<CR>")       --git commit
vim.keymap.set("n", "<leader>go", ":G push origin ")     --git push
vim.keymap.set("n", "<leader>gh", ":G checkout ")        --git checkout
vim.keymap.set("n", "<leader>gb", ":G branch ")          --git checkout
vim.keymap.set("n", "<leader>gp", ":G pull --all <CR>")  --git pull everything
--DIFS--
vim.keymap.set("n", "<leader>dl", ":diffget LO<CR>]czz") --Grab From Local
vim.keymap.set("n", "<leader>db", ":diffget BA<CR>]czz") --Grab From Base
vim.keymap.set("n", "<leader>dr", ":diffget RE<CR>]czz") --Grab From Remote

-------INSERT--------
vim.keymap.set("i", "jj", "<Esc>")                    --Home Row Normal Mode
vim.keymap.set("i", "<C-B>", "/**<CR><CR>**/<Esc>ki") --Block Comment Easy

------------AUTOSURROUND------------
vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "[", "[]<Esc>i")
vim.keymap.set("i", '"', '""<Esc>i')
vim.keymap.set("i", "'", "''<Esc>i")
---------TERMINAL----------
vim.keymap.set("t", ":q", "<CR>exit<CR>")      --Close Terminal EZ
vim.keymap.set("t", ":w", "<C-|><C-n>")        --Exit Terminal EZ
vim.keymap.set("t", "<leader>w", "<C-|><C-n>") --Exit Terminal EZ
