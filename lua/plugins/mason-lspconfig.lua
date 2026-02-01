return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = { "lua_ls", "angularls" },
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)

        -- Mapping "Go to Definition" via the modern LspAttach autocommand
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(ev)
                local opts = { buffer = ev.buf }
                vim.diagnostic.config({
                    virtual_text = true,           -- Show error message next to the code
                    signs = true,                  -- Show icons in the gutter
                    update_in_insert = false,      -- Don't update diagnostics while typing (prevents flickering)
                    underline = true,
                    severity_sort = true,
                    float = {
                        border = 'rounded',        -- Add a nice border to the error popup
                        source = 'always',         -- Show which LSP the error came from (e.g., angularls)
                    },
                })
                -- Navigation
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)     -- Go to definition
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)    -- Go to declaration
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)     -- List all references
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- Go to implementation

                -- Documentation / Info
                vim.keymap.set('n', 'K',  vim.lsp.buf.hover, opts)          -- Show documentation (Hover)
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Signature help

                -- Actions
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)      -- Rename symbol
                vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts) -- Code actions

                -- Diagnostics (Errors/Warnings)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)   -- Previous error
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)   -- Next error
                vim.keymap.set('n', '<leader>i', vim.diagnostic.open_float, opts) -- Show error in popup
            end,
        })

    end
}
