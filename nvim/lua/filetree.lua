local status, tree = pcall(require, 'nvim-tree')
if not status then return end


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

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
