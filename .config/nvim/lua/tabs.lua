local status, bufferline = pcall(require, 'bufferline')

if not status then
  return
end

bufferline.setup {
  -- highlights = require("catppuccin.groups.integrations.bufferline").get(),
  options = {
    indicator = {
      style = 'underline',
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      },
      {
        filetype = "DiffviewFiles",
        text = "Source Control",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      },
      {
        filetype = "lspsagaoutline",
        text = "Buffer Symbols",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    },
    -- separator_style = "slant",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
}
