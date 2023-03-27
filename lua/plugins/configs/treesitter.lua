local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

require("base46").load_highlight "treesitter"

-- Add for rainbow with base46
vim.cmd 'hi link rainbowcol1 Function'
vim.cmd 'hi link rainbowcol2 Special'
vim.cmd 'hi link rainbowcol3 String'
vim.cmd 'hi link rainbowcol4 Label'
vim.cmd 'hi link rainbowcol5 Number'
vim.cmd 'hi link rainbowcol6 Constant'
vim.cmd 'hi link rainbowcol7 Keyword'

local options = {
  ensure_installed = {
    "lua",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
  },

  rainbow = {
    enable = true,
  },
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)
