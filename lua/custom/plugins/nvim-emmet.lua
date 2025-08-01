return {
  'olrtg/nvim-emmet',
  dependencies = {
    'olrtg/emmet-language-server',
  },
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
  end,
}
