return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
    },
    keys = {
        {
            "<leader>e",
            "<cmd>NvimTreeFindFile<CR>",
            desc = "Toggle explorer",
        },
    },
}
