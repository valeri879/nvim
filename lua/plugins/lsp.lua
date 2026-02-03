return {
    vim.lsp.config("pug", {
        filetypes = { "pug" },
        root_dir = vim.fs.root(0, { "package.json", ".git" })
    });

    -- Enable pug lsp
    vim.lsp.enable("pug");

    vim.lsp.config('angularls', {
        cmd = (function()
            local root = vim.fs.root(0, { 'package.json', 'angular.json' })

            -- Construct the path to the index.js file
            local ngserver = root and (root .. "/node_modules/@angular/language-server/bin/ngserver")
            local node_modules = root and (root .. "/node_modules")

            if ngserver and vim.fn.filereadable(ngserver) == 1 then
                return {
                    ngserver,
                    "--stdio",
                    "--tsProbeLocations", node_modules,
                    "--ngProbeLocations", node_modules
                }
            end

            -- Fallback to global command if local isn't found
            return { "ngserver", "--stdio" }
        end)(),
        filetypes = { 'typescript', 'html', 'htmlangular' },
        root_markers = { 'package.json', 'angular.json', '.git' },
    });

    vim.lsp.enable('angularls');

    -- 3. The "Force Fix" for HTML files
    -- This ensures that when an HTML file is opened, Neovim checks for the Angular LSP
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "html", "typescript" },
        callback = function()
            -- This checks if angularls should be attached to this specific buffer
            vim.lsp.enable('angularls')
        end,
    })
}
