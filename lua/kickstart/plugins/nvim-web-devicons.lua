return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').set_icon {
      css = {
        icon = vim.fn.nr2char(0xe749), -- nf-dev-css3_full
        color = '#1572B6',
        name = 'Css',
      },
    }
  end,
}
