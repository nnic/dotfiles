vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "rounded"

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/RRethy/base16-nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	--{ src = "https://github.com/saghen/blink.cmp", version = "1.6.0"},
})

require "mini.pick".setup()
require "oil".setup()
--require "blink.cmp".setup({keymap = { preset = 'super-tab'}})

vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")

vim.lsp.enable({ "lua_ls" })
vim.keymap.set('n', '<leader>kd', vim.lsp.buf.format)

vim.cmd("colorscheme base16-tomorrow-night-eighties")

vim.lsp.config("lua_ls", {
		settings = {
				Lua = {
						workspace = {
								library = vim.api.nvim_get_runtime_file("", true),
						}
				}
		}
})
