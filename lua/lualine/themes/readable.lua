local colors = require("readable.colors").setup({ transform = true })
local config = require("readable.config").options

local readable = {}

readable.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

readable.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

readable.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

readable.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

readable.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

readable.terminal = {
  a = {bg = colors.green1, fg = colors.black },
  b = {bg = colors.fg_gutter, fg=colors.green1 },
}

readable.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(readable) do
    mode.a.gui = "bold"
  end
end

return readable
