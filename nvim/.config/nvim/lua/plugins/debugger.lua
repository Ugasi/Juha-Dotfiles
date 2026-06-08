return {
    "mfussenegger/nvim-dap",
    dependencies = {
        { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
    },
    keys = {
        { mode = 'n', '<F5>', function() require('dap').continue() end },
        { mode = 'n', '<F10>', function() require('dap').step_over() end },
        { mode = 'n', '<F11>', function() require('dap').step_into() end },
        { mode = 'n', '<F12>', function() require('dap').step_out() end },
        { mode = 'n', '<Leader>b', function() require('dap').toggle_breakpoint() end },
        { mode = 'n', '<Leader>B', function() require('dap').set_breakpoint() end},
        { mode = 'n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end },
        { mode = 'n', '<Leader>dr', function() require('dap').repl.open() end },
        { mode = 'n', '<Leader>dl', function() require('dap').run_last() end },
        { mode = {'n', 'v'}, '<Leader>dh', function()
            require('dap.ui.widgets').hover()
            end
        },
        { mode = {'n', 'v'}, '<Leader>dp', function()
            require('dap.ui.widgets').preview()
            end
        },
        { mode = 'n', '<Leader>df', function()
            local widgets = require('dap.ui.widgets')
            widgets.centered_float(widgets.frames)
            end
        },
        { mode = 'n', '<Leader>ds', function()
            local widgets = require('dap.ui.widgets')
            widgets.centered_float(widgets.scopes)
            end
        },
    }
}
