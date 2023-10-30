return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  opts = {
    ensure_installed = {
      "codelldb",
    },
  },
  config = {
    ui = {
      icons = {
        package_installed = "ok",
        package_pending = "->",
        package_uninstalled = "x",
      }
    }
  }
}
