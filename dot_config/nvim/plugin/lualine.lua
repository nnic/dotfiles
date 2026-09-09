vim.pack.add { "https://github.com/nvim-lualine/lualine.nvim" }

require("lualine").setup {
	options = {
		theme = "auto",
		globalstatus = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" },
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = { { "filetype", icon_only = true }, "encoding", "fileformat" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
}