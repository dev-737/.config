-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = { file_ignore_patterns = {"node_modules"} }, -- using file_ignore_patterns makes search slow :(
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
})

telescope.load_extension('fzf')
