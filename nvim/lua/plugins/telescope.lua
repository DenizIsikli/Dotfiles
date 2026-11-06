return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local action_state = require("telescope.actions.state")

		-- Open the selected file, or jump to its window if it's already open
		local function open_or_switch(prompt_bufnr)
			local entry = action_state.get_selected_entry()
			if not entry then
				return -- nothing selected (e.g. empty results), do nothing
			end

			local filepath = entry.path or entry.filename
			actions.close(prompt_bufnr)

			for _, win in ipairs(vim.api.nvim_list_wins()) do
				local win_buf = vim.api.nvim_win_get_buf(win)
				if vim.api.nvim_buf_get_name(win_buf) == filepath then
					vim.api.nvim_set_current_win(win)
					return
				end
			end

			vim.cmd("edit " .. vim.fn.fnameescape(filepath))
		end

		local function attach_open_or_switch(_, map)
			map("i", "<CR>", open_or_switch)
			map("n", "<CR>", open_or_switch)
			return true
		end

		-- Setup Telescope
		telescope.setup({
			defaults = {
				dynamic_preview_title = true,
				layout_config = {
					prompt_position = "top",
					horizontal = {
						mirror = false,
						preview_cutoff = 100,
						preview_width = 0.65,
					},
					vertical = {
						mirror = true,
						preview_cutoff = 0.4,
					},
					flex = {
						flip_columns = 200,
					},
					height = 0.95,
					width = 0.90,
				},
				file_ignore_patterns = {
					"%.git/",
					"^.*/%.git/.*",
					"target/",
					"%.exe$",
					"%.dll$",
					"%.cache",
					"%.o",
					"%.a",
					"%.out",
					"%.class",
					"%.pdf",
					"%.mkv",
					"%.mp4",
					"%.zip",
					"node_modules",
				},
				mappings = {
					i = { -- Insert mode mappings
						["<C-l>"] = "select_horizontal", -- Open in horizontal split
						["<C-h>"] = "select_vertical", -- Open in vertical split
						["<C-t>"] = "select_tab", -- Open in new tab
						["<C-k>"] = "move_selection_previous", -- Move selection up
						["<C-j>"] = "move_selection_next", -- Move selection down
						["<C-u>"] = actions.preview_scrolling_up, -- Scroll up in preview
						["<C-d>"] = actions.preview_scrolling_down, -- Scroll down in preview
					},
				},
			},
			pickers = {
				find_files = {
					hidden = true,
					find_command = { "fdfind", "--type", "f", "--hidden", "--no-ignore-vcs", "--color", "never" },
					attach_mappings = attach_open_or_switch,
				},
				oldfiles = {
					attach_mappings = attach_open_or_switch,
				},
			},
		})

		-- Load extensions (after setup so their config applies)
		telescope.load_extension("ui-select")

		-- Keymaps
		vim.api.nvim_set_keymap("n", "<leader>3", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>1", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true })
	end,
}
