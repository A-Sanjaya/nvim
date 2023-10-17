-- empty setup using defaults
-- OR setup with some options


local api = require 'nvim-tree.api'

local width_rasio = 50/100
local height_rasio = 70/100


local function alignt_float(x_alignt, y_alignt)
  return {
    col = vim.opt.columns:get() * (x_alignt - width_rasio * x_alignt),
    row = vim.opt.lines:get() * (y_alignt - height_rasio * y_alignt),

    width = math.floor(vim.opt.columns:get() * width_rasio),
    height = math.floor(vim.opt.lines:get() * height_rasio),
  }
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    float = {
      enable = true,
      open_win_config = alignt_float(0.5, 0.5),
    }
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', "fe", api.tree.toggle, {silent=true})
vim.keymap.set('n', "<Esc>", api.tree.close, {silent=true})
