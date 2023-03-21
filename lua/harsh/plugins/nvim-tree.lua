local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- from docs
vim.g.loaded = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	auto_reload_on_write = true,
	disable_netrw = true,
	sort_by = "name",
	-- open_on_setup = true,

	view = {
		adaptive_size = true,
		cursorline = true,
		width = 30,
		signcolumn = "yes",
		mappings = {
			custom_only = false,
			list = {
				-- user mappings go here
				{ key = "u", action = "dir_up" },
			},
		},
	},

	renderer = {
		group_empty = true,
		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
					-- default = "",
					-- open = "",
					-- empty = "",
					-- empty_open = "",
					-- symlink = "",
					-- symlink_open = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},

	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},

	filters = {
		dotfiles = false,
		git_clean = false,
		no_buffer = false,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	git = {
		ignore = false,
	},
})
