return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
  config = function ()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find  git files' })
    vim.keymap.set('n', '<leader>of', builtin.oldfiles, { desc = 'Telescope find  git files' })
    vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope find  git files' })
  end
}
