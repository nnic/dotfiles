return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects()
      end,
      desc = "Find Projects",
    },
  },
  opts = function(_, opts)
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.preset = opts.dashboard.preset or {}
    opts.dashboard.preset.keys = opts.dashboard.preset.keys or {}
    table.insert(opts.dashboard.preset.keys, 3, {
      icon = " ",
      key = "p",
      desc = "Projects",
      action = ":lua Snacks.picker.projects()",
    })

    opts.picker = opts.picker or {}
    opts.picker.sources = opts.picker.sources or {}
    opts.picker.sources.projects = {
      -- finder = "recent_projects", -- This tells the picker to use the finder defined above
      format = "file",
      -- 'dev' and 'patterns' are removed from here
      confirm = "load_session",
      -- this disables including project directories of recent files
      recent = false,
      -- 'matcher' and 'sort' stay here as they are about sorting the results in the UI
      -- add custom patterns or directories.
      -- this just adds top level directories to search for projects
      -- essentially it searches sub directories for the corresponding default patterns
      dev = { "/repos", "~/.config" },
      projects = { "~/.config/lazyvim", "/repos/iplicit/src/Web/" },
      -- however, in order to extend the default table you must rewrite the default key/values
      -- for example, addition of ".jj" to the default patterns
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "package.json", "Makefile", ".jj" },
    }
    return opts
  end,
}
