return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
		},

		formatters = {
			prettier = {
				prepend_args = {
					"--print-width",
					"120",
					"--tab-width",
					"4",
					"--trailing-comma",
					"all",
					"--config-precedence",
					"prefer-file",
				},
			},
		},

		format_on_save = function(bufnr)
			local filepath = vim.api.nvim_buf_get_name(bufnr)

			if filepath:match("/Codeforces/") or filepath:match("/LeetCode") then
				return nil
			end

			return {
				timeout_ms = 1000,
				lsp_format = "fallback",
			}
		end,
	},
}
