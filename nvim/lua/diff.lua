local status, diff = pcall(require, "diffview")
if not status then return end

diff.setup({
  file_panel = {
    listing_style = "list",                -- One of 'list' or 'tree'
    -- tree_options = {                    -- Only applies when listing_style is 'tree'
    --   flatten_dirs = true,              -- Flatten dirs that only contain one single dir
    --   folder_statuses = "only_folded",  -- One of 'never', 'only_folded' or 'always'.
    -- },
  }
})
