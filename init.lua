require("config.lazy");

-- Basic options in Lua
local opt = vim.opt  -- shorthand

opt.wrap = false          -- no wrap lines
opt.number = true         -- show line numbers
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- indentation width
opt.tabstop = 4           -- tab width
opt.autoindent = true     -- maintain indent from previous line
opt.smartindent = true    -- smart auto-indenting

opt.termguicolors = true  -- enable 24-bit colors

-- Netrw configs
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_winsize = 15  -- netrw width
-- vim.g.netrw_browse_split = 4 -- browser split
vim.g.netrw_liststyle = 3 -- list style to tree
vim.g.netrw_banner = 0 -- disable top banner
vim.g.netrw_keepdir = 0

vim.cmd("syntax on");
