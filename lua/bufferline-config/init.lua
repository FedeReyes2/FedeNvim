vim.opt.termguicolors = true
require("bufferline").setup{}
vim.cmd[[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
]]
