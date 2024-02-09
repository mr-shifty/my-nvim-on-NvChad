vim.cmd("hi link NvimTreeExecFile Title")

local conf = require "plugins.configs.nvimtree"
conf.renderer = {
  root_folder_label = true,
  highlight_git = true,
  indent_markers = {
    enable = true,
  },
  icons= {
    show = {
      git = true,
      }
  }
}
conf.view.adaptive_size = true
conf.git.enable = true

return conf
