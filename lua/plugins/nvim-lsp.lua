local config = function()
  local cmp_nvim_lsp = require("cmp_nvim_lsp")
  local lspconfig = require("lspconfig")
  local signs = {
    Error = "x", Warn = "!", Hint = "?", Info = "I"
  }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end
  
  local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()
  lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
  lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "clangd", "--offset-encoding=utf-16" },
    filetypes = { "c", "cpp", "h" },
  })
  local rust_tools = require("rust-tools")
  local flake8 = require("efmls-configs.linters.flake8")
  local autopep8 = require("efmls-configs.formatters.autopep8")
  local clang_tidy = require("efmls-configs.linters.clang_tidy")
  local clang_format = require("efmls-configs.formatters.clang_format") 
  local autopep8 = require("efmls-configs.formatters.black")
  local rustfmt = require('efmls-configs.formatters.rustfmt')
  rust_tools.setup({
    server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<leader>a", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<leader>A", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  })
  lspconfig.efm.setup({
    filetypes = {
      "c", "cpp", "h", "py", "rs"
    },
    init_options = {
      documentFormatting = true,
      documentRangeFormatting = true,
      hover = true,
      documentSymbol = true,
      codeAction = true,
      completion = true,
    },
    settings = {
      languages = {
        c = { clang_tidy, clang_format },
        rust = { rustfmt },
        python = { flake8, autopep8 },
      },
    },
  })
  local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
  vim.api.nvim_create_autocmd("BufWritePost", {
    group = lsp_fmt_group,
    callback = function(ev)
      local fmt = vim.lsp.get_active_clients({name='efm'})
      local rf = vim.lsp.get_active_clients({name='rust_analyzer'})
      if not vim.tbl_isempty(fmt) then
        vim.lsp.buf.format({name='efm'})
      end
      if not vim.tbl_isempty(rf) then
        vim.lsp.buf.format()
      end
    end
    })
end

return {
  "neovim/nvim-lspconfig",
  config = config,
  lazy = false,
  dependencies = {
    "simrat39/rust-tools.nvim",
    "windwp/nvim-autopairs",
    "williamboma/mason.nvim",
    "hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
    "creativenull/efmls-configs-nvim",
  }
}
