local status, aerial = pcall(require, 'aerial')
if not status then return end

aerial.setup({
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end,

  layout = {
    max_width = { 40, 0.2 },
    width = nil,
    min_width = 20,
  },
})

vim.keymap.set('n', '<leader>q', '<cmd>AerialToggle!<CR>')
