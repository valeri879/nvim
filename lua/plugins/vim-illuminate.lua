return {
    "RRethy/vim-illuminate",
    config = function ()
        require("illuminate").configure({
            delay = 200,
            filetypes_deny_list = { "NvimTree", "TelescopePrompt" }
        });

        vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#3b4252" })
        vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#3b4252" })
        vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#3b4252" })
    end
}
