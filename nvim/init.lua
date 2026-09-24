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

-- the funny
local funny_list = {
	"sudo make me a sandwich",
	"this time i'm really gonna do it",
	"everyone has pronouns dipshit, it came free with your fucking speaking language",
	"you had it set to M for Mini, when it should be set to W for Wumbo",
	"hello everypony ^-^",
	"OR OR OR OR OR OR",
	"help me terry davis",
	"ǝuoqɹǝuuᴉp",
	"Not on steam!",
	"holographic meat loaf... my favorite !",
	"WAIT DON'T TELL ME",
	"we serve food here",
	"you used me... for land development !",
	"did you check under the tray ?",
	"oh boy, 3am !",
	"goodbye everyone, i'll remember you all in therapy",
	"you don't need a lisence to drive a sandwich",
	"i put the hot in psychotic",
	"how do i look yellow man",
	"me a chungus, no. you a chungus",
	"i'm high as fuck and have a gun in my backpack",
	"on a scale from nothing burger to everything bagel, how would you rate our sex",
	"thats it your going in the soup",
	"blowing you up with my mind",
	"you got this heart form your mother",
	"minimalizm is a scam invented by big small to sell more less",
	"your trauma is niche",
	"$1 GRILLED CHEESE DON'T ASK FOR A GOD-DAMNED TOMATO SLICE OR I SWEAR TO GOD...",
	"throughput ¬‿¬",
	"edging my vertex",
	"uh oh, it broke.  whole computer broke", -- sprague
    "see you in space, cowboy",
    "why do it by hand in 10 minutes when you can automate it in 10 hours",
    "the great thing about standards is that there's so many to choose from",
    "writing code takes 90% of the project time; testing takes the other 90%",
    "PEBKAC: problem exists between keyboard and chair",
}

math.randomseed(os.time())
print(funny_list[math.random(#funny_list)])
