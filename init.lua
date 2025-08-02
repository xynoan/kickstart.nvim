-- TODO: reformat warning messages

-- global variables
require 'user.settings'

-- options
require 'user.options'

--  this allows Ctrl+C / Ctrl+V in Neovim
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
-- keymaps
require 'user.keymaps'

-- autocommands
require 'user.autocmds'

-- install `lazy.nvim` plugin manager
require 'core.lazy'

require('lazy').setup({
  require 'custom.plugins.nvim-emmet',
  require 'custom.plugins.nvim-highlight-colors',
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.guess-indent',
  require 'kickstart.plugins.nvim-treesitter',
  require 'kickstart.plugins.mini',
  require 'kickstart.plugins.todo-comments',
  require 'kickstart.plugins.tokyonight',
  require 'kickstart.plugins.blink',
  require 'kickstart.plugins.conform',
  require 'kickstart.plugins.nvim-lspconfig',
  require 'kickstart.plugins.which-key',
  require 'kickstart.plugins.lazydev',
  require 'kickstart.plugins.telescope',
  require 'kickstart.plugins.gitsigns',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
