-- Tab configurations
vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')

require('config.kickstart')

-- Package manager configuration
require('config.lazy')

-- Theme configuration
vim.cmd[[colorscheme tokyonight]]

