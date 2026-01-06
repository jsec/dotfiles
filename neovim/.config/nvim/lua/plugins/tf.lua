return {
    'allaman/tf.nvim',
    ft = 'terraform',
    config = function()
        require('tf').setup({
            doc = {
                default_option = 'open',
                browser_command = 'chrome'
            },
            terraform = {
                bin = '/opt/homebrew/bin/terraform'
            }
        })
    end
}
