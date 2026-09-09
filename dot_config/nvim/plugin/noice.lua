vim.pack.add {
	"https://github.com/folke/noice.nvim",
	"https://github.com/MunifTanjim/nui.nvim",
}

local noice = require("noice")

noice.setup {
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	routes = {
		{
			filter = {
				event = "msg_show",
				any = {
					{ find = "%d+L, %d+B" },
					{ find = "; after #%d+" },
					{ find = "; before #%d+" },
				},
			},
				view = "mini",
		},
	},
	presets = {
		bottom_search = true,
		command_palette = true,
		long_message_to_split = true,
	},
}

vim.keymap.set("n", "<leader>snl", function()
	noice.cmd("last")
end, { desc = "Noice Last Message" })

vim.keymap.set("n", "<leader>snh", function()
	noice.cmd("history")
end, { desc = "Noice History" })

vim.keymap.set("n", "<leader>sna", function()
	noice.cmd("all")
end, { desc = "Noice All" })

vim.keymap.set("n", "<leader>snd", function()
	noice.cmd("dismiss")
end, { desc = "Dismiss All" })

vim.keymap.set("n", "<C-f>", function()
	if not noice.scroll(4) then
		return "<C-f>"
	end
end, { expr = true, silent = true, desc = "Scroll Forward" })

vim.keymap.set("n", "<C-b>", function()
	if not noice.scroll(-4) then
		return "<C-b>"
	end
end, { expr = true, silent = true, desc = "Scroll Backward" })