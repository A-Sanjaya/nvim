-- tab
local tab_size = 4;
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.softtabstop = tab_size

-- case
vim.opt.number = true
vim.opt.ignorecase = true

-- theme
vim.cmd[[colorscheme tokyonight-night]]
