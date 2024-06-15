local lualine_status, lualine = pcall(require, "lualine")
local git_blame_status, git_blame = pcall(require, "gitblame")
if not lualine_status or not git_blame_status then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    -- theme = "onedark",
    theme = "catppuccin",
    -- theme = "tokyonight",
    component_separators = "|",
    section_separators = { left = "", right = "" },
  },
  disabled_filetypes = {
    statusline = {},
    winbar = {},
  },
  sections = {
    lualine_a = {
      { "mode", separator = { left = "" }, right_padding = 2 },
    },
    lualine_b = { "filename", "branch" },
    lualine_c = { "fileformat" },
    lualine_d = {
      { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
    },
    lualine_x = {},
    lualine_y = { "filetype", "progress" },
    lualine_z = {
      { "location", separator = { right = "" }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
  -- options = {
  --   icons_enabled = true,
  -- theme = "onedark",
  --   component_separators = { left = '', right = ''},
  --   section_separators = { left = '', right = ''},
  --   disabled_filetypes = {
  --     statusline = {},
  --     winbar = {},
  --   },
  --   ignore_focus = {},
  --   always_divide_middle = true,
  --   globalstatus = false,
  --   refresh = {
  --     statusline = 1000,
  --     tabline = 1000,
  --     winbar = 1000,
  --   }
  -- },
  -- sections = {
  --   lualine_a = {'mode'},
  --   lualine_b = {'branch', 'diff', 'diagnostics'},
  --   lualine_c = {'filename'},
  --   lualine_x = {'encoding', 'fileformat', 'filetype'},
  --   lualine_y = {'progress'},
  --   lualine_z = {'location'}
  -- },
})
