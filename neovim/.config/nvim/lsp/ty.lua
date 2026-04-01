---@type vim.lsp.Config
return {
	cmd = { 'ty', 'server' },
	filetypes = { 'python' },
	root_markers = {
		'ty.toml',
		'uv.lock',
		'setup.py',
		'setup.cfg',
		'requirements.txt',
		'.git',
	},
	settings = {
		ty = {
			inlayHints = {
				variableTypes = false,
				callArgumentNames = false,
			},
		},
	},
}
