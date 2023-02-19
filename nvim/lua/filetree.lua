
local status, tree = pcall(require, 'nvim-tree')

if not status then
  return
end

local options = {
  view = {
    -- adaptive_size = true,
    -- side = "left",
    -- width = 25,
    hide_root_folder = true, -- disable path on top of filetree
  },
  renderer = {
    -- highlight_git = true,
    -- highlight_opened_files = "none",
    --
    -- indent_markers = {
    --   enable = false,
    -- },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}


tree.setup(options)

