-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- line wrapping
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursor line
vim.opt.cursorline = true

-- font style
vim.g.tex_conceal = ""

-- colorscheme
vim.o.termguicolors = true
-- vim.cmd([[colorscheme onedark]])
vim.cmd([[colorscheme material]])
vim.g.material_theme_style = "darker"
-- vim.g.material_style = "deep ocean"
vim.opt.background = "dark"
vim.api.nvim_command("highlight EndOfBuffer guifg=bg")
-- vim.api.nvim_command("highlight NonText guifg=bg")

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split window
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 8

-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
