return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- Color scheme
    -- use { 'sainnhe/gruvbox-material' }
    use { '/Users/alexcantu/.config/nvim/nvim_plugins/tokyonight.nvim' }
    use { 'sainnhe/everforest' }

    -- ufo, for code folding
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } }
    }

    -- LSP and completion
    -- use { '/Users/alexcantu/.config/nvim/nvim_plugins/nvim-lspconfig-0.1.4' }
    -- use { 'nvim-lua/completion-nvim' }

    -- Lua development
    -- use { 'tjdevries/nlua.nvim' }


    -- Vim dispatch
    -- use { 'tpope/vim-dispatch' }

    -- Fugitive for Git
    use { '/Users/alexcantu/.config/nvim/nvim_plugins/vim-fugitive-3.7' }

    -- nerdtree for nvim
    -- use { 'kyazdani42/nvim-web-devicons' }
    -- use { 'kyazdani42/nvim-tree.lua' }

    -- statusline lua
    -- I actually do not like this plugin
    -- use { 'beauwilliams/statusline.lua' }
    -- use { 'kosayoda/nvim-lightbulb' }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- dev icons
    -- use {'ryanoasis/vim-devicons'}

    -- vimspector
    -- use {'puremourning/vimspector'}

    -- bufferline
    use { '/Users/alexcantu/.config/nvim/nvim_plugins/bufferline.nvim-3.1.0' }
    use { 'akinsho/bufferline.nvim', requires = '/Users/alexcantu/.config/nvim/nvim_plugins/nvim-web-devicons-master' }

    -- neotree
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    -- nvim.coc
    use { 'neoclide/coc.nvim', branch = 'release' }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use { 'ggandor/leap.nvim' }

    -- diffview
    use { "sindrets/diffview.nvim" }
end)
