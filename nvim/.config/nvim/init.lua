-- Tab configurations
vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')

require('config.kickstart')

-- Package manager configuration
require('config.lazy')

require('oil').setup({
    default_file_explorer = true,
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,

    view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
            return name == '..' or name == '.git'
        end
    },
    win_options = {
        wrap = true,
    }
})

-- Theme configuration
vim.cmd[[colorscheme tokyonight]]

-- Telescope configuration
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
