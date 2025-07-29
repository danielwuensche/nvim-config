return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	{ -- If encountering errors, see telescope-fzf-native README for installation instructions
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable("make") == 1
		end,
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
	end,
}
