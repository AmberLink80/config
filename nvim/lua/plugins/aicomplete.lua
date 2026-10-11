vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/milanglacier/minuet-ai.nvim',
    'https://github.com/olimorris/codecompanion.nvim',
})

local ollama_host = 'http://desktop:11434'

require('minuet').setup {
    provider = 'openai_fim_compatible',
    n_completions = 1,
    context_window = 2000,
    request_timeout = 10,
    provider_options = {
        openai_fim_compatible = {
            api_key = 'TERM',
            name = 'Ollama',
            end_point = ollama_host .. '/v1/completions',
            model = 'qwen2.5-coder:14b-base',
            optional = {
                max_tokens = 96,
                top_p = 0.9,
            },
        },
    },
    virtualtext = {
        -- auto_trigger_ft = { 'c', 'cpp', 'make', 'lua', 'python', 'sh' },
        auto_trigger_ft = { "*" },
        keymap = {
            accept = '<C-y>',
            next = '<A-]>',
            dismiss = '<A-e>',
        },
    },
}

require('codecompanion').setup {
    adapters = {
        http = {
            ollama = function()
                return require('codecompanion.adapters').extend('ollama', {
                    env = { url = ollama_host },
                    schema = {
                        model = { default = 'qwen2.5-coder:14b' },
                        num_ctx = { default = 8192 },
                    },
                })
            end,
        },
    },

    strategies = {
        chat = { adapter = 'ollama' },
        inline = { adapter = 'ollama' },
    },
}

-- keymaps
vim.keymap.set('n', '<leader>ci', '<cmd>Minuet virtualtext toggle<cr>',
    { desc = 'Toggle auto inline completion' })

vim.keymap.set({ 'n', 'v' }, '<leader>cc', '<cmd>CodeCompanionChat Toggle<cr>',
    { desc = 'Toggle AI chat' })

vim.keymap.set({ 'n', 'v' }, '<leader>ca', '<cmd>CodeCompanionActions<cr>',
    { desc = 'AI actions' })
