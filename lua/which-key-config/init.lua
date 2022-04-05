local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end
local toggle_lazygit = function ()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end
local mappings = {
  q = {":q<CR>", "Quit"},
  s = {":w<CR>", "Save"},
  w = {":wq<CR>", "Save & Quit"},
  x = {":bdelete<CR>", "Close"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  u = {":Telescope live_grep<CR>", "Telescope Live"},
  r = {":Telescope resume<CR>", "Telescope Resume"},
  t = {
    t = {":ToggleTerm<cr>", "Split Below"}, 
    f = {toggle_float, "Floating Terminal"},
    l = {toggle_lazygit, "LazyGit"},
  },
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

