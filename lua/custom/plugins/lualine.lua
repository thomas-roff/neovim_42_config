return {
	"nvim-lualine/lualine.nvim",
	opts = function(_, opts)
		-- LazyVim already shows branch by default, but you can customize it
		opts.sections = opts.sections or {}
		opts.sections.lualine_b = opts.sections.lualine_b or {}

		-- This ensures branch, diff, and diagnostics are shown
		-- (LazyVim usually has this by default)
		table.insert(opts.sections.lualine_b, "branch")
		table.insert(opts.sections.lualine_b, "diff")
		table.insert(opts.sections.lualine_b, "diagnostics")
		-- Custom function to get visual column width
		local function visual_width()
			local line = vim.fn.line(".")
			local col = vim.fn.col(".")
			local virtcol = vim.fn.virtcol("$") - 1 -- virtcol of end of line (minus the newline)

			return string.format("%d", virtcol)
		end

		-- Custom function to show current cursor position visually
		local function cursor_visual_position()
			local virtcol = vim.fn.virtcol(".")
			return string.format("%d", virtcol)
		end

		-- Add to your lualine sections
		opts.sections = opts.sections or {}
		opts.sections.lualine_x = opts.sections.lualine_x or {}

		-- Option 1: Show line visual width
		table.insert(opts.sections.lualine_x, {
			visual_width,
			icon = "󰀹", -- or use "" or any icon you like
		})

		-- Option 2: Show cursor visual column position
		-- table.insert(opts.sections.lualine_x, {
		--   cursor_visual_position,
		--   icon = ":",
		-- })

		return opts
	end,
}
