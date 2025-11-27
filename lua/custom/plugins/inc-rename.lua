return {
	{
		"smjonas/inc-rename.nvim",
		opts = {
			vim.keymap.set("n", "<leader>rt", ":IncRename ", { desc = "[R]ename [T]otally new word" }),
			vim.keymap.set("n", "<leader>re", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { expr = true, desc = "[R]ename and [E]dit word" }),
		},
	},
}
