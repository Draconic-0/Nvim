return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    require("luasnip.loaders.from_vscode").lazy_load()
    event = "InsertEnter",
    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(), 
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.complete(),
        ["<C-e"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        {name = "buffer" },
        {name = "path" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          max_width = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
  dependencies = {
    "onsails/lspkind.nvim",
    -- {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets"
      -- version = "2.*",
      -- build = "make install_jsregexp",
    -- },
  },
}
