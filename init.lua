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

vim.cmd("syntax on");

