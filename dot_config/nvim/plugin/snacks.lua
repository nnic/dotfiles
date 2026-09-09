vim.pack.add { "https://github.com/folke/snacks.nvim" }

local snacks = require("snacks")

snacks.setup {
	bigfile = { enabled = true },
	dashboard = { enabled = true },
	explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	notifier = { enabled = true },
	picker = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = false },
	words = { enabled = true },
}

local picker = snacks.picker

vim.keymap.set("n", "<leader><space>", picker.smart, { desc = "Smart Find Files" })
vim.keymap.set("n", "<leader>,", picker.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>/", picker.grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>:", picker.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>n", picker.notifications, { desc = "Notification History" })
vim.keymap.set("n", "<leader>e", snacks.explorer, { desc = "File Explorer" })

vim.keymap.set("n", "<leader>fb", picker.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fc", function()
	picker.files { cwd = vim.fn.stdpath("config") }
end, { desc = "Find Config File" })
vim.keymap.set("n", "<leader>ff", picker.files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", picker.git_files, { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>fr", picker.recent, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fp", picker.projects, { desc = "Projects" })

vim.keymap.set("n", "<leader>sa", picker.autocmds, { desc = "Autocmds" })
vim.keymap.set("n", "<leader>sb", picker.lines, { desc = "Buffer Lines" })
vim.keymap.set("n", "<leader>sB", picker.grep_buffers, { desc = "Grep Open Buffers" })
vim.keymap.set("n", "<leader>sc", picker.commands, { desc = "Commands" })
vim.keymap.set("n", "<leader>sC", picker.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>sd", picker.diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>sD", function()
	picker.diagnostics { bufnr = 0 }
end, { desc = "Buffer Diagnostics" })
vim.keymap.set("n", "<leader>sg", picker.grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>sG", picker.grep_word, { desc = "Grep Word" })
vim.keymap.set({ "n", "x" }, "<leader>sw", picker.grep_word, { desc = "Visual Selection or Word" })
vim.keymap.set("n", "<leader>sh", picker.help, { desc = "Help Pages" })
vim.keymap.set("n", "<leader>sH", picker.highlights, { desc = "Highlights" })
vim.keymap.set("n", "<leader>sj", picker.jumps, { desc = "Jumps" })
vim.keymap.set("n", "<leader>sk", picker.keymaps, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>sl", picker.loclist, { desc = "Location List" })
vim.keymap.set("n", "<leader>sm", picker.marks, { desc = "Marks" })
vim.keymap.set("n", "<leader>sM", picker.man, { desc = "Man Pages" })
vim.keymap.set("n", "<leader>sp", picker.lazy, { desc = "Plugin Spec" })
vim.keymap.set("n", "<leader>sq", picker.qflist, { desc = "Quickfix List" })
vim.keymap.set("n", "<leader>sr", picker.resume, { desc = "Resume" })
vim.keymap.set("n", "<leader>su", picker.undo, { desc = "Undo History" })
vim.keymap.set("n", "<leader>s\"", picker.registers, { desc = "Registers" })
vim.keymap.set("n", "<leader>s/", picker.search_history, { desc = "Search History" })

vim.keymap.set("n", "<leader>gL", picker.git_log, { desc = "Git Log (cwd)" })
vim.keymap.set("n", "<leader>gb", picker.git_log_line, { desc = "Git Blame Line" })
vim.keymap.set("n", "<leader>gf", picker.git_log_file, { desc = "Git Current File History" })
vim.keymap.set("n", "<leader>gl", picker.git_log, { desc = "Git Log" })

vim.keymap.set("n", "<leader>un", function()
	snacks.notifier.hide()
end, { desc = "Dismiss All Notifications" })