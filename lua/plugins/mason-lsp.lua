return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      'clangd',
      'efm',
    },
    automatic_installation = true,
  },
  event = "BufReadPre",
  dependencies = { "williamboman/mason.nvim" },
}
