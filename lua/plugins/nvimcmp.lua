return {
        "hrsh7th/nvim-cmp",
        dependencies = {
                "onsails/lspkind.nvim",
                "L3MON4D3/LuaSnip",
                "saadparwaiz1/cmp_luasnip",
                "rafamadriz/friendly-snippets",
                "hrsh7th/cmp-calc",
                "hrsh7th/cmp-path",
        },
        event = { "InsertEnter", "CmdlineEnter" },
        config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        require("luasnip.loaders.from_vscode").lazy_load()
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

          mapping = {

   ['<CR>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            if luasnip.expandable() then
                luasnip.expand()
            else
                cmp.confirm({
                    select = true,
                })
            end
        else
            fallback()
        end
    end),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

  },

        sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                {name = "buffer" },
                {name = "path" },
                {name = "calc"},
        }),
        formatting = {
                format = lspkind.cmp_format({
                        max_width = 50,
                        ellipsis_char = "...",
                        }),
                },
        })
        end,
}
