return {
  "mfussenegger/nvim-dap",
  event = "VeryLazy",
  config = function ()
    local dap = require('dap')
    dap.adapters.lldb = {
      type = 'server',
      port = "${port}",
      executable = {
        command = '/usr/bin/codelldb',
        args = {"--port", "${port}"}
      }
    }
    dap.configurations.c = {
      {
        type = 'lldb',
        request = 'launch',
        name = "Launch file",
       program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        args = function()
          local x = vim.fn.input('Args: ', "" ,'file')
          local a = {}
          while (string.len(x)>=1) do
            table.insert(a, x)
            x = vim.fn.input('Args: ', "" ,'file') 
          end
          return a
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
    }
    vim.keymap.set('n', '<M-b>', dap.toggle_breakpoint)
    vim.keymap.set('n', '<M-c>', dap.continue)
    vim.keymap.set('n', '<M-i>', dap.step_into)
    vim.keymap.set('n',  '<M-s>', dap.step_over)
    vim.keymap.set('n', '<M-r>', dap.repl.open)
  end,
}
