return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		notify_on_error = true,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_organize_imports", "ruff_format" },
			rust = { "rustfmt" },
			go = { "goimports", "gofumpt" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			vue = { "prettier" },
			svelte = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			graphql = { "prettier" },
			markdown = { "prettier" },
			yaml = { "prettier" },
			toml = { "taplo" },
			sh = { "shfmt" },
			bash = { "shfmt" },
			["_"] = { "trim_whitespace", "trim_newlines" },
		},
		formatters = {
			prettier = {
				prepend_args = function(_, ctx)
					local ft = vim.bo[ctx.buf].filetype
					local four_space = {
						javascript = true,
						typescript = true,
						javascriptreact = true,
						typescriptreact = true,
						vue = true,
						svelte = true,
					}
					if four_space[ft] then
						return { "--tab-width", "4", "--print-width", "120" }
					end
					return {}
				end,
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
