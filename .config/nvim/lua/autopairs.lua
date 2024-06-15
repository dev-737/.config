local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then return end

autopairs.setup({
  check_ts = true, -- enable treesitter
  ts_config = {
    lua = { 'string' },
    javascript = { "string", "template_string" },
    java = false,
    disable_filetypes = { "TelescopePrompt" },
    fast_wrap = {
      map = "<M-e>",
      chars = {"{", "[", "(", "'", '"', "`"},
      pattern = [=[[%'%"%)%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    }
  }
})
