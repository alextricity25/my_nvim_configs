vim.g.mapleader = ' '

-- Sensible defaults
-- require('settings')
vim.cmd [[packadd packer.nvim]]
-- This command will run PackerCompile when the
-- plugins.lua file is saved.
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

-- Install plugins
require('plugins')
vim.cmd 'PackerInstall'

-- Colorscheme
require('colorscheme')

require('settings')

require("toggleterm").setup {
    close_on_exit = false,
    autochdir = true,
    shell = vim.o.shell,
    size = 20}

-- Key mappings
require('keymappings')
-- coc settings
require('coc')

-- Bufferline
require("bufferline").setup {}

-- Lualine
require("lualine").setup {}

require("neo-tree").setup({
    filesystem = {
        follow_current_file = true,
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false
        }
    }
})

require('ufo').setup()

require('Comment').setup()

require('leap').add_default_mappings()

require('diffview').setup()
-- require('leap').leap { target_windows = { vim.fn.win_getid() } }

-- Setup Lua language server using submodule
-- require('lsp_lua')

-- Another option is to groups configuration in one folder
-- require('config')

-- My Globals
-- P = function(v)
--print(vim.inspect(v))
--return v
--end

--R = function(name)
--reload(name)
--return require(name)
--end
-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive
--
