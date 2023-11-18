-- Transitioning from init.vim to init.lua
-- **** LUA LUA LUA LUA LUA LUA LUA LUA LUA ****
--
-- vim.cmd("...") to call directly into vim.cmd and do normal stuff
-- vim.opt. to set an option

-- options
vim.opt.background  = "dark"
vim.opt.clipboard   = "unnamedplus"
vim.opt.completeopt = "noinsert,menuone,noselect"
vim.opt.hidden      = true
vim.opt.inccommand  = "split"

vim.opt.mouse      = "a"
vim.opt.number     = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.title      = true

vim.opt.ttimeoutlen = 0
vim.opt.wildmenu    = true
vim.opt.expandtab   = true
vim.opt.shiftwidth  = 8
vim.opt.tabstop     = 8

vim.cmd("set t_Co=256")

-- misc
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

-- file browser
vim.g.netrw_banner       = 0
vim.g.netrw_liststyle    = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv         = 1
vim.g.netrw_winsize      = 25

vim.g.netrw_keepdir         = 0
vim.g.netrw_localcopydircmd = "cp -r"

-- plugins
vim.cmd([[

        call plug#begin()

                Plug 'vim-airline/vim-airline'
                Plug 'ryanoasis/vim-devicons' 
                Plug 'sheerun/vim-polygot'
                Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install'}
                Plug 'plasticboy/vim-markdown'

                Plug 'airblade/vim-gitgutter'
                Plug 'antonk52/bad-practices.nvim'
                Plug 'preservim/nerdtree'

        call plug#end()
  ]])

-- require('bad_practices.nvm').setup({
--        most_splits = 3,
--        most_tabs   = 3,
--        max_hjkl    = 10,
--})
