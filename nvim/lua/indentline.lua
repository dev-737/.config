require("ibl").setup({
  -- for example, context is off by default, use this to turn it on
  -- show_current_context = true,
  -- -- show_current_context_start = true,
  exclude = {
    filetypes = {
      'help',
      'startify',
      'aerial',
      'alpha',
      'dashboard',
      'packer',
      'neogitstatus',
      'NvimTree',
      'neo-tree',
      'Trouble',
    },
  },
})
