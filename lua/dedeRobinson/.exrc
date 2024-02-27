let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent> <C-G>Þ <Nop>
inoremap <silent> <C-G> <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <C-B> /****/ki
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <C-W> u
inoremap <C-U> u
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  cÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  dÞ <Nop>
nnoremap <silent>  gÞ <Nop>
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
tnoremap  w <C-Bar>
nnoremap  dr :diffget RE]czz
nnoremap  db :diffget BA]czz
nnoremap  dl :diffget LO]czz
nnoremap  gp :G pull --all 
nnoremap  gb :G branch 
nnoremap  gh :G checkout 
nnoremap  go :G push origin 
nnoremap  gc :G commit
nnoremap  ga :G add .
nnoremap  x :x
nnoremap  n :wwi<Up>
nnoremap  <C-L> :luafile %
nnoremap   :luafile %
nnoremap  l :Telescope live_grep
nnoremap  h :Telescope help_tags
nnoremap  f :find 
nnoremap  r :s/
nnoremap  z $zf%
nnoremap  , :Vex:term
nnoremap  b :split
nnoremap  v :vsplit
nnoremap  t :tabe
nnoremap  p :Ex
nnoremap  w :w
nnoremap  sG :LiveGrepGitRoot
nnoremap  q :q
nnoremap  e :e 
snoremap <silent>   <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
xnoremap * y/\V"
tnoremap :w <C-Bar>
tnoremap :q exit
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
xmap S <Plug>VSurround
nnoremap Y y$
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
onoremap <silent> aj :normal vaj
xnoremap <expr> aj jdaddy#outer_movement(v:count1)
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap <silent> daÞ <Nop>
nnoremap <silent> diÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
nmap ds <Plug>Dsurround
nnoremap <silent> gqaÞ <Nop>
nnoremap <silent> gqiÞ <Nop>
nnoremap <silent> gqÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gwaÞ <Nop>
nnoremap <silent> gwiÞ <Nop>
nnoremap <silent> gwÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap <silent> gwaj :exe jdaddy#reformat('jdaddy#outer_pos', v:count1, v:register)
nnoremap <silent> gwij :exe jdaddy#reformat('jdaddy#inner_pos', v:count1, v:register)
nnoremap <silent> gqaj :exe jdaddy#reformat('jdaddy#outer_pos', v:count1)
nnoremap <silent> gqij :exe jdaddy#reformat('jdaddy#inner_pos', v:count1)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
xmap gS <Plug>VgSurround
onoremap <silent> ij :normal vij
xnoremap <expr> ij jdaddy#inner_movement(v:count1)
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap <silent> <SNR>49_Þ <Nop>
nnoremap <silent> <SNR>49Þ <Nop>
nnoremap <silent> <SNR>4Þ <Nop>
nnoremap <silent> <SNR>Þ <Nop>
nnoremap <silent> <SNR> <Cmd>lua require("which-key").show("��R", {mode = "n", auto = true})
nnoremap <SNR>49_: :=v:count ? v:count : ''
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap  /****/ki
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
imap  <Plug>Isurround
inoremap  u
inoremap  u
inoremap " ""i
inoremap ' ''i
inoremap ( ()i
inoremap [ []i
inoremap jj 
inoremap { {}i
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menuone,noselect
set guicursor=a:NoiceHiddenCursor
set helplang=en
set nohlsearch
set ignorecase
set laststatus=0
set noloadplugins
set mouse=
set packpath=C:\\tools\\neovim\\nvim-win64\\share\\nvim\\runtime
set path=.,/usr/include,,,**
set noruler
set runtimepath=~\\AppData\\Local\\nvim,~\\AppData\\Local\\nvim-data\\site,~\\AppData\\Local\\nvim-data\\lazy\\lazy.nvim,~/AppData/Local/nvim-data/lazy/nvim-notify,~\\AppData\\Local\\nvim-data\\lazy\\nui.nvim,~\\AppData\\Local\\nvim-data\\lazy\\noice.nvim,~\\AppData\\Local\\nvim-data\\lazy\\vim-fugitive,~\\AppData\\Local\\nvim-data\\lazy\\friendly-snippets,~\\AppData\\Local\\nvim-data\\lazy\\cmp-path,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip,~\\AppData\\Local\\nvim-data\\lazy\\LuaSnip,~\\AppData\\Local\\nvim-data\\lazy\\nvim-cmp,~\\AppData\\Local\\nvim-data\\lazy\\rainbow_csv,~\\AppData\\Local\\nvim-data\\lazy\\gitsigns.nvim,~\\AppData\\Local\\nvim-data\\lazy\\neodev.nvim,~\\AppData\\Local\\nvim-data\\lazy\\fidget.nvim,~\\AppData\\Local\\nvim-data\\lazy\\mason-lspconfig.nvim,~\\AppData\\Local\\nvim-data\\lazy\\mason.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-lspconfig,~\\AppData\\Local\\nvim-data\\lazy\\which-key.nvim,~\\AppData\\Local\\nvim-data\\lazy\\ripgrep,~\\AppData\\Local\\nvim-data\\lazy\\vim-jdaddy,~\\AppData\\Local\\nvim-data\\lazy\\plenary.nvim,~\\AppData\\Local\\nvim-data\\lazy\\telescope.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter-textobjects,~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter,~\\AppData\\Local\\nvim-data\\lazy\\Comment.nvim,~\\AppData\\Local\\nvim-data\\lazy\\vim-surround,~\\AppData\\Local\\nvim-data\\lazy\\nvim-colorizer.lua,~\\AppData\\Local\\nvim-data\\lazy\\vim-dadbod,~\\AppData\\Local\\nvim-data\\lazy\\onedark.nvim,C:\\tools\\neovim\\nvim-win64\\share\\nvim\\runtime,C:\\tools\\neovim\\nvim-win64\\share\\nvim\\runtime\\pack\\dist\\opt\\matchit,C:\\tools\\neovim\\nvim-win64\\lib\\nvim,~\\AppData\\Local\\nvim-data\\lazy\\readme,~\\AppData\\Local\\nvim-data\\lazy\\cmp-path\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip\\after
set shell=powershell
set shellcmdflag=-command
set shiftwidth=4
set showtabline=2
set smartcase
set statusline=----------------------------------------------------------------------------------------------------------------------------------------------------------------
set tabline=%Y\ %=%{FugitiveHead()}\ %t
set tabstop=4
set termguicolors
set timeoutlen=300
set undofile
set updatetime=250
set window=44
" vim: set ft=vim :
