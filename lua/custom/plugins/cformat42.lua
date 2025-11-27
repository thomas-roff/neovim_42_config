return {
	{
		"Diogo-ss/42-C-Formatter.nvim",
		cmd = "CFormat42",
		config = function()
			local formatter = require("42-formatter")
			formatter.setup({
				formatter = "c_formatter_42", -- or your formatter binary
				filetypes = { c = true, h = true, cpp = true, hpp = true },
			})
		end,
		opts = {
			vim.keymap.set("n", "<leader>cf", ":CFormat42 ", { desc = "[C][f]ormatter for 42 norm" }),
		},
	},
}
