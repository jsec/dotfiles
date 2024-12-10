return {
    {
        'folke/snacks.nvim',
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            indent = {
                scope = {
                    animate = {
                        duration = {
                            step = 10,
                            total = 250,
                        }
                    }
                },
            },
            lazygit = { enabled = true },
            scroll = {
                animate = {
                    duration = { step = 10, total = 300 }
                }
            }
        }
    }
}
