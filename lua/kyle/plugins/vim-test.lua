return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "theutz/neotest-pest",
  },
  config = function()
      require('neotest').setup({
	adapters = {
	      require('neotest-pest')({
	      pest_cmd = function()
		return "./vendor/bin/pest"
	      end
	      }),
	}
      })
      -- vim.api.nvim_set_keymap('n','<leader>tr',':lua require("neotest").run.run()<CR>',{noremap = true, silent = true})
      -- vim.api.nvim_set_keymap('n','<leader>tS',':lua require("neotest").run.stop()<CR>',{noremap = true, silent = true})
      -- vim.api.nvim_set_keymap('n','<leader>ts',':lua require("neotest").summary.toggle()<CR>',{noremap = true, silent = true})
      -- vim.api.nvim_set_keymap('n','<leader>to',':lua require("neotest").output.open()<CR>',{noremap = true, silent = true})
      -- vim.api.nvim_set_keymap('n','<leader>tO',':lua require("neotest").output.open({enter=true})<CR>',{noremap = true, silent = true})
      -- vim.api.nvim_set_keymap('n','<leader>tS',':lua require("neotest").run.stop()<CR>',{noremap = true, silent = true})
   end,
  keys = {
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
    { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
    { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop" },
  },
}
