local lspconfig = require("lspconfig")

require('lsp_signature').setup({
  bind = true,
  floating_window = true,
  hint_enable = true,
  handler_opts = {
    border = "rounded"
  },
})

-- Enable LSP servers
lspconfig.ts_ls.setup({})
lspconfig.jdtls.setup({})
lspconfig.omnisharp.setup({})

-- nvim-cmp setup
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  }),
})

require('nvim-tree').setup({})
