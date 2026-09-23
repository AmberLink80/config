vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "autopep8" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		rust = { "ast-grep" },
		css = { "prettier" },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>l", function()
	conform.format({
		async = true,
		lsp_fallback = true,
	})
end)
