do
  local color = {
    name = 'tokyonight',
    transparent = false,
  }

  --COLOR SCHEMES
  vim.pack.add {
    { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
    'https://github.com/folke/tokyonight.nvim',
    'https://github.com/mellow-theme/mellow.nvim',
    'https://github.com/olimorris/onedarkpro.nvim',
    'https://github.com/sainnhe/sonokai',
    'https://github.com/Mofiqul/dracula.nvim',
    'https://github.com/tiagovla/tokyodark.nvim',
  }

  vim.g.sonokai_style = 'andromeda'
  vim.g.mellow_transparent = true

  ---@diagnostic disable-next-line: missing-fields
  require('tokyonight').setup {
    styles = {
      comments = { italic = false }, -- Disable italics in comments
    },
  }

  vim.cmd('colorscheme ' .. color.name)

  if color.transparent then
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end
end
