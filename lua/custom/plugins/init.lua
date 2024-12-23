-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-surround',
  'tpope/vim-dadbod',
  'tpope/vim-jdaddy',
  'tpope/vim-fugitive',
  -- 'easymotion/vim-easymotion',--Get this to actually work
  'BurntSushi/ripgrep',
  'mechatroner/rainbow_csv',
  --for neorg
  'nvim-neotest/nvim-nio',
  'pysan3/pathlib.nvim',
  'nvim-neorg/neorg-lsp',
  --noice
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      { 'rcarriga/nvim-notify', enabled = false },
    },
    config = function()
      require('noice').setup {
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = false,        -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = true,            -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,       -- add a border to hover docs and signature help
        },

        cmdline = {
          opts = {
            relative = 'cursor',
            position = { row = 1, col = -99999 },
          },
          format = {
            cmdline = { icon = ':' },
            search_down = { icon = '/' },
            search_up = { icon = '/' },
            filter = { icon = '' },
            lua = { icon = '' },
            help = { icon = '?' },
          },
        },
        format = {
          level = {
            icons = {
              error = 'X',
              warn = 'W',
              info = 'I',
            },
          },
        },
        notify = {
          enabled = false,
        },
        messages = {
          enabled = false,
        },
        popupmenu = { kind_icons = false },
        views = {
          inc_rename = {
            border = {
              style = 'none',
            },
          },
          command_palette = {
            border = {
              style = 'none',
              padding = { x = 0, y = 0 },
            },
          },
          cmdline_popup = {
            border = {
              style = 'none',
            },
            filter_options = {},
          },
        },
      }
    end,
  },
  --vhyrro
  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    config = true,
  },
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim', 'pathlib.nvim', 'nvim-nio' },
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},  -- Loads default behaviour
          ['core.concealer'] = {}, -- Adds pretty icons to your documents
          ['core.esupports.hop'] = {},
          ['core.dirman'] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = '~/notes',
              },
            },
          },
          ['core.tempus'] = {},
          ['core.ui'] = {},
          ['core.ui.calendar'] = {},
          ['core.keybinds'] = {},
        },
      }
    end,
  },
  {
    'j-hui/fidget.nvim',
    opts = {
      progress = {
        poll_rate = 0,
        supress_on_insert = true,
      },
    },
  },

  --for ipynb
  ----molten

  -- {
  --   'luk400/vim-jukit',
  --   config = function()
  --     vim.g.jukit_mappings = 0
  --   end,
  -- }, this is great just have to learn to disable <CR> mappings
  --
  -- 'benlubas/molten-nvim',
  -- 'dccsillag/magma-nvim',
  -- {
  --   'meatballs/notebook.nvim', --MAGMA WILL BE BETTER
  --   config = function()
  --     require('notebook').setup()
  --   end,
}
