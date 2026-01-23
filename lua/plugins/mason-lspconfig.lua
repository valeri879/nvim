return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer" },
        -- 'automatic_enable' is true by default in v2.0+
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)

        -- Mapping "Go to Definition" via the modern LspAttach autocommand
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(ev)
                local b_opts = { buffer = ev.buf }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, b_opts)
            end,
        })
    end
}

