-- init.lua
-- vim.cmd("...") to call directly into vim.cmd and do normal stuff
-- vim.opt. to set an option

-- options
-- vim.opt.background  = "dark"

-- plugins
vim.cmd([[

        call plug#begin('/home/ryan/.local/share/nvim/plugged')

                Plug 'vim-airline/vim-airline'
                Plug 'ryanoasis/vim-devicons' 
                Plug 'plasticboy/vim-markdown'
                Plug 'airblade/vim-gitgutter'

                Plug 'preservim/nerdtree'
                Plug 'ntpeters/vim-better-whitespace'
                Plug 'morhetz/gruvbox'

        call plug#end()
  ]])

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

-- true color?
vim.cmd("set t_Co=256")

-- misc
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.cmd("set termguicolors")

-- file browser
vim.g.netrw_banner       = 0
vim.g.netrw_liststyle    = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv         = 1
vim.g.netrw_winsize      = 25

vim.g.netrw_keepdir         = 0
vim.g.netrw_localcopydircmd = "cp -r"

vim.g.tagbar_type_go = [[{
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }]]


-- TODO GET vim-better-whitespace working


-- vim.g.dracula_colorterm = 0
-- vim.cmd("colorscheme dracula")

vim.cmd([[
        autocmd BufWinLeave *.go mkview
        autocmd BufWinEnter *.go silent loadview | colorscheme gruvbox
        autocmd BufWinEnter *.json colorscheme gruvbox | set background=light
]])



vim.g.better_whitespace_ctermcolor='red'
vim.g.better_whitespace_enabled=1
vim.g.strip_whitespace_on_save=1
