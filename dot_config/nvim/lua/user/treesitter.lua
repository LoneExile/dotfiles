local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	vim.notify("treesitter" .. " not found!")
	return
end

configs.setup({
	ensure_installed = "all",
	sync_install = false,
	auto_install = true,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "python", "css" } },

	-- **nvim-ts-context-commentstring**
	context_commentstring = {
		enable = true,
	},

	-- **nvim-ts-rainbow**
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- termcolors = {} -- table of colour name strings
		colors = {
			"#68a0b0",
			"#946EaD",
			"#c7aA6D",
			-- "Gold",
			-- "Orchid",
			-- "DodgerBlue",
			-- -- "Cornsilk",
			-- -- "Salmon",
			-- -- "LawnGreen",
		},
		disable = { "html" },
	},
})
