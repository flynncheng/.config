-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  bg0    = '#323d43',
  bg1    = '#3c474d',
  bg3    = '#505a60',
  fg     = '#d8caac',
  aqua   = '#87c095',
  green  = '#a7c080',
  orange = '#e39b7b',
  purple = '#d39bb6',
  red    = '#e68183',
  grey1  = '#868d80',
}

local everforest = {
  normal = {
    a = { bg = colors.green, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.fg, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.red, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.orange, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  command = {
    a = { bg = colors.aqua, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  terminal = {
    a = { bg = colors.purple, fg = colors.bg0, gui = "bold" },
    b = { bg = colors.bg3, fg = colors.fg },
    c = { bg = colors.bg1, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.bg1, fg = colors.grey1, gui = "bold" },
    b = { bg = colors.bg1, fg = colors.grey1 },
    c = { bg = colors.bg1, fg = colors.grey1 },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        theme = everforest,
        component_separators = "",
        section_separators = { left = "", right = "" },
        -- section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        -- lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
          -- { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_b = {},
        lualine_c = {},
        lualine_a = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
