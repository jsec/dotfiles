return {
  default_config = {
    cmd = { 'terraform-ls', 'serve' },
    filetypes = { 'terraform', 'terraform-vars' },
    root_dir = function(bufnr, on_dir)
        local fname = vim.uri_to_fname(vim.uri_from_bufnr(bufnr))
        local tf_root = vim.fs.find('.terraform', { upward = true, path = fname })[1]
        local git_root = vim.fs.find('.git', { upward = true, path = fname })[1]

        if tf_root then
          on_dir(vim.fn.fnamemodify(tf_root, ':h'))
        elseif git_root then
          on_dir(vim.fn.fnamemodify(git_root, ':h'))
        end
    end
  },
}
