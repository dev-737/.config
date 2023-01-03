local status, bufferline = pcall(require, 'bufferline')

if not status then
  return
end

bufferline.setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = false -- use a "true" to enable the default, or set your own character
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
