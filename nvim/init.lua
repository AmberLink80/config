-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- terminal
vim.opt.hidden = true
vim.opt.shell = "fish"
vim.opt.termguicolors = true

-- core config
require("core.options")
require("core.keybinds")
require("core.commands")


-- plugins
require("plugins.colorscheme")
require("plugins.toggleterm")
require("plugins.nvim-tree")
require("plugins.harpoon")
require("plugins.qol")
require("plugins.lsp-config")
require("plugins.conform")
require("plugins.blink")
require("plugins.telescope")
require("plugins.aicomplete")

-- the funny
local funny_list = {

}

math.randomseed(os.time())
print(funny_list[math.random(#funny_list)])
