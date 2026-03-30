---@type vim.lsp.Config
return {
	cmd = { 'terraform-ls', 'serve', '-log-file', '/dev/null' },
	filetypes = {
		'terraform',
		'terraform-vars',
	},
	root_dir = function(bufnr, on_dir)
		local path = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))

		local root_file = vim.fs.find({
			'.terraform',
			'.terraform.lock.hcl'
		}, {
			path = path,
			upward = true
		})[1]

		if root_file then
			on_dir(vim.fs.dirname(root_file))
			return
		end

		on_dir(path)
	end,
	on_attach = function(client)
		client.server_capabilities.semanticTokensProvider = nil
	end
}
