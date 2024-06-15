local status, toggleterm = pcall(require, 'toggleterm')
if not status then
 return
end

toggleterm.setup({
  size = 20,
  open_mapping = [[<A-`>]],
  hide_numbers = true,
  shade_terminals = false,
  direction = 'horizontal'
})
