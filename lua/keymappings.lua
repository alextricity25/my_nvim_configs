local utils = require('utils')

utils.map('i', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm"<CR>')
utils.map('n', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm"<CR>')

-- Neotree
utils.map('i', [[<C-n>]], ':Neotree<CR>')
utils.map('n', [[<C-n>]], ':Neotree<CR>')

-- bufferline
utils.map('n', [[<C-i>]], ':BufferLinePick<CR>')
-- ufo code folding
vim.keymap.set('n', 'zN', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- Open coc settings
vim.keymap.set('n', '<space>1', ":vsplit ~/.config/nvim/lua/coc.lua<cr>", { silent = true, nowait = true })

-- toggle term
function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
