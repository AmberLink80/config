vim.pack.add({
    { src = "https://github.com/saghen/blink.lib" },
    { src = "https://github.com/saghen/blink.cmp",            version = vim.version.range("1.*") },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
})

local cmp = require('blink.cmp')
cmp.build():wait(60000)

cmp.setup({
    keymap = { preset = "default" },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
})
