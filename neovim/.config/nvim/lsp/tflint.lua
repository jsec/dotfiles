---@type vim.lsp.Config
return {
	cmd = { 'tflint', '--langserver' },
	filetypes = { 'terraform' },
	root_dir = function(bufnr, on_dir)
		local path = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))

		local root_file = vim.fs.find({
			'.tflint.hcl',
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
	end
}
