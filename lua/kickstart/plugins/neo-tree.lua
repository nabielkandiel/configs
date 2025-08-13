-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'Toggle Neo-tree' },
    { '<leader>o', '<cmd>Neotree focus<CR>', desc = 'Focus Neo-tree' },
    { '<leader>bf', '<cmd>Neotree reveal<CR>', desc = 'Reveal current buffer in Neo-tree' },
    { '<leader>gs', '<cmd>Neotree git_status<CR>', desc = 'Show Git status in Neo-tree' },
    { '<leader>sb', '<cmd>Neotree buffers<CR>', desc = 'List open buffers in Neo-tree' },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
