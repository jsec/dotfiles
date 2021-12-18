-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#7aa2f7',
  cyan   = '#7dcfff',
  white  = '#c0caf5',
  red    = '#f7768e',
  yellow = '#e0af68',
  grey   = '#414868',
  black  = '#1f2335',
  green  = '#9ece6a',
  muted  = '#565f89'
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.blue, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = {
    a = { fg = colors.black, bg = colors.green },
    z = { fg = colors.black, bg = colors.green },
  },

  visual = { a = { fg = colors.black, bg = colors.yellow } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.muted, bg = colors.black },
    b = { fg = colors.muted, bg = colors.black },
    c = { fg = colors.muted, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'diff' },
    lualine_c = { { 'diagnostics', sources = { 'nvim_diagnostic' } } },
    lualine_x = {},
    lualine_y = { 'filetype', 'encoding' },
    lualine_z = {
      { 'branch', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = { { 'diagnostics', sources = { 'nvim_diagnostic' } } },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'branch' },
  },
  tabline = {},
  extensions = {},
}
