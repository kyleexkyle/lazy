return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],
    [[            Captain Syntax         ]]
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
      dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "󰤘  Recent Files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", "󰊄  Find Text", ":Telescope live_grep <CR>"),
      -- dashboard.button("SPC ee", "  Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
