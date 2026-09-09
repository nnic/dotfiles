vim.pack.add {
	"https://github.com/akinsho/bufferline.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
}

require("bufferline").setup {
	options = {
		close_command = function(buffer)
			vim.api.nvim_buf_delete(buffer, {})
		end,
		right_mouse_command = function(buffer)
			vim.api.nvim_buf_delete(buffer, {})
		end,
		diagnostics = "nvim_lsp",
		always_show_bufferline = false,
		diagnostics_indicator = function(_, _, diagnostics)
			local indicator = ""
			if diagnostics.error then
				indicator = indicator .. "!" .. diagnostics.error .. " "
			end
			if diagnostics.warning then
				indicator = indicator .. "?" .. diagnostics.warning
			end
			return indicator
		end,
	},
}

vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", { desc = "Toggle Pin" })
vim.keymap.set("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", { desc = "Delete Non-Pinned Buffers" })
vim.keymap.set("n", "<leader>br", "<cmd>BufferLineCloseRight<cr>", { desc = "Delete Buffers to the Right" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", { desc = "Delete Buffers to the Left" })
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[B", "<cmd>BufferLineMovePrev<cr>", { desc = "Move Buffer Prev" })
vim.keymap.set("n", "]B", "<cmd>BufferLineMoveNext<cr>", { desc = "Move Buffer Next" })
vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<cr>", { desc = "Pick Buffer" })