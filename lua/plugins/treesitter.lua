return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- Stay on the stable branch to avoid rewrite issues
    build = ":TSUpdate",
    lazy = false,      -- IMPORTANT: Do not lazy-load Treesitter
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "c",
                "pug",
                "twig",
                "php",
                "css",
                "scss",
                "typescript",
            },
            highlight = { 
                enable = true,
            },
            indent = { enable = true },
        })
    end,
}
