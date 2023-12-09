return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        autotag = {
          enable = true,
        },
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }
      )
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    -- or                              , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
    end
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
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require("noice").setup({
        views = {
          cmdline_popup = {
            border = {
              style = "single",
            },
            filter_options = {},
          },
        },
      })
    end,
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
  -- { "davidhalter/jedi-vim",                   lazy = true },
  { "alvan/vim-closetag" },
  { "http://github.com/tpope/vim-surround" },
  { "https://github.com/tpope/vim-commentary" },
  { "https://github.com/tc50cal/vim-terminal" },
  {
    "nvchad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require('colorizer').setup {
        user_default_options = {
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn   = true, -- CSS rgb() and rgba() functions
          hsl_fn   = true, -- CSS hsl() and hsla() functions
          css      = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn   = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        },
      }
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end
  },
  { 'terryma/vim-multiple-cursors',   lazy = true },
  { 'mg979/vim-visual-multi',         branch = 'master' },
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
    config = function()
      require('lualine').setup()
    end,
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
          -- statusline = false,
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
  { 'yaegassy/coc-intelephense',              build = "yarn install --frozen-lockfile" },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
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
  },
  {
    'https://github.com/windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  { "https://github.com/lambdalisue/suda.vim" },
  --- TELESCOPE IMAGE PREVIEW
  { 'nvim-lua/popup.nvim' },
  {
    'nvim-telescope/telescope-media-files.nvim',
    config = function()
      require('telescope').load_extension('media_files')
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  {
    "kndndrj/nvim-dbee",
    lazy = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup( --[[optional config]])
    end,
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod',                     lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  {
    "Febri-i/auto-require",
    opts = { ... },
    config = function()
      local lua_root = "~/.config/nvim/lua"
      require("auto-require").setup({
        dir_list = { "mote" },
      })
    end
  }

}
