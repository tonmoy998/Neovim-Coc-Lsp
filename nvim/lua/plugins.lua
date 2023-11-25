return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require('neo-tree').setup({
        window = {
          width = 30
        }
      })
    end,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
  },
  { "jiangmiao/auto-pairs" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  { "mattn/emmet-vim" },
  { "mfussenegger/nvim-dap" },
  { "voldikss/vim-floaterm" },
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup()
    end,
    lazy = true,
  },
  { "KabbAmine/vCoolor.vim" },
  { "davidhalter/jedi-vim" },
  { "alvan/vim-closetag" },
  { "http://github.com/tpope/vim-surround" },
  { "https://github.com/tpope/vim-commentary" },
  { "https://github.com/tc50cal/vim-terminal" },
  { "https://github.com/ap/vim-css-color" },
  { "karb94/neoscroll.nvim" },
  { 'terryma/vim-multiple-cursors',           lazy = true },
  { 'mg979/vim-visual-multi',                 branch = 'master' },
  { "rbgrouleff/bclose.vim" },
  { "francoiscabrol/ranger.vim" },
  { "prabirshrestha/asyncomplete.vim" },
  { "sheerun/vim-polyglot" },
  {
    "https://github.com/AndrewRadev/tagalong.vim",
  },
  {
    "https://github.com/leafOfTree/vim-matchtag",
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },
  { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
███████  █████ ██████  █████          █████                    █████
░░██████ ░░███ ░░███   ░░███          ░░███                    ░░███
 ░███░███ ░███  ░███    ░███   ██████  ░███████    ██████    ███████
 ░███░░███░███  ░███    ░███  ███░░███ ░███░░███  ░░░░░███  ███░░███
 ░███ ░░██████  ░░███   ███  ░███ ░░░  ░███ ░███   ███████ ░███ ░███
 ░███  ░░█████   ░░░█████░   ░███  ███ ░███ ░███  ███░░███ ░███ ░███
 █████  ░░█████    ░░███     ░░██████  ████ █████░░████████░░████████
 ░░░░░    ░░░░░      ░░░       ░░░░░░  ░░░░ ░░░░░  ░░░░░░░░  ░░░░░░░░
    ]]

      logo = string.rep("\n", 2) .. logo .. "\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
            { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
            { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
            { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
            { action = "Telescope find_files cwd=~/.config/nvim", desc = "Config", icon = "  ", key = "c" },
            { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
            { action = "qa", desc = " Quit", icon = " ", key = "q" },

          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
  { "https://github.com/brenoprata10/nvim-highlight-colors" },
  { 'yaegassy/coc-intelephense',                            build = "yarn install --frozen-lockfile" },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup()
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup()
    end
  }
}
