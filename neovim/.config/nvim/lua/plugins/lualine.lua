-- Custom lualine config
-- Author: jsec
-- Credit: shadmansaleh && glepnir
local lualine = require('lualine')
local colors = require('utils.colors')

local mode_color = {
  n = colors.red,
  i = colors.green,
  v = colors.yellow,
  V = colors.yellow,
  ['\x16'] = colors.yellow, -- visual block is dumb
  c = colors.magenta,
  no = colors.red,
  s = colors.orange,
  S = colors.orange, [''] = colors.yellow,
  ic = colors.yellow,
  R = colors.violet,
  Rv = colors.violet,
  cv = colors.red,
  ce = colors.red,
  r = colors.cyan,
  rm = colors.cyan,
  ['r?'] = colors.cyan,
  ['!'] = colors.red,
  t = colors.red,
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {
      { 'filename', file_status = false, path = 1 }
    },
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  function()
    vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. ' guibg=' .. colors.bg)
    return '▊'
  end,
  color = 'LualineMode',
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.lightblue, gui = 'bold' },
})

ins_left({
  'branch',
  icon = '',
  color = { fg = colors.magenta, gui = 'bold' },
})

ins_left({
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
})

ins_left({
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.green },
  },
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function()
    return '%='
  end,
})

ins_left({
  'lsp_progress',
  display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' }},
  colors = {
    percentage  = colors.lightblue,
    title  = colors.lightblue,
    message  = colors.lightblue,
    spinner = colors.magenta,
    lsp_client_name = colors.magenta,
    use = true,
  },
  separators = {
      component = ' ',
      progress = ' | ',
      percentage = { pre = '', post = '%% ' },
      title = { pre = '', post = ': ' },
      lsp_client_name = { pre = '[', post = ']' },
      spinner = { pre = '', post = '' },
      message = { pre = '(', post = ')', commenced = 'In Progress', completed = 'Completed' },
  },
  timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
  spinner_symbols = { "◴", "◷", "◶", "◵" }
})

ins_right {
  function(msg)
    msg = msg or "Inactive"
    local buf_clients = vim.lsp.buf_get_clients()
    if next(buf_clients) == nil then
      if type(msg) == "boolean" or #msg == 0 then
        return "Inactive"
      end
      return msg
    end
    local buf_client_names = {}

    for _, client in pairs(buf_clients) do
      if client.name ~= "null-ls" then
        table.insert(buf_client_names, client.name)
      end
    end

    return table.concat(buf_client_names, ", ")
  end,
  icon = " ",
  color = { fg = colors.magenta },
  padding = { left = 0, right = 1 },
  cond = conditions.hide_in_width,
}

ins_right({
  'filetype',
  fmt = string.upper,
  icons_enabled = false,
  color = { fg = colors.green, gui = 'bold' },
})

ins_right {
  function()
    local b = vim.api.nvim_get_current_buf()
    if next(vim.treesitter.highlighter.active[b]) then
      return " 綠TS"
    end
    return ""
  end,
  color = { fg = colors.green },
  padding = { left = 1, right = 0 },
  cond = conditions.hide_in_width,
}


ins_right({

  function()
    vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. ' guibg=' .. colors.bg)
    return '▊'
  end,
  color = 'LualineMode',
  padding = { left = 1 },
})

-- Now don't forget to initialize lualine
lualine.setup(config)
