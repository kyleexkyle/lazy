return {
	"phpactor/phpactor",
	ft = "php",
	-- run = "composer install --no-dev --optimize-autoloader",
	config = function()

-- 		vim.cmd("silent !composer install --no-dev --optimize-autoloader")
		vim.keymap.set("n","<leader>pm",":PhpactorContextMenu<CR>")
	end,
}
