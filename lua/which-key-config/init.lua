local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  s = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  u = {":Telescope live_grep<CR>", "Telescope Live"},
  r = {":Telescope resume<CR>", "Telescope Resume"},
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

