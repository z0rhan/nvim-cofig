return {
    {
        "github/copilot.vim",
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "eslint" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.pylsp.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.html.setup({
                filetypes = { "html", "htmldjango" },
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({ capabilities = capabilities })
            lspconfig.djlsp.setup({ capabilities = capabilities })
            lspconfig.ts_ls.setup({ capabilities = capabilities })
        end,
    },
    -- Map <leader>cp to toggle Copilot
    vim.api.nvim_set_keymap("n", "<Leader>con", ":Copilot disable<CR>", { noremap = true, silent = true }),
    vim.api.nvim_set_keymap("n", "<leader>cof", ":Copilot disable<CR>", { noremap = true, silent = true }),
}
