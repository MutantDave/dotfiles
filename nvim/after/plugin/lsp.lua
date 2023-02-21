local lsp = require('lsp-zero')
local cmp = require'cmp'

lsp.preset('recommended')
lsp.setup_nvim_cmp({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
   })
  }
})

lsp.configure('solidity', {
  settings = {
    solidity = {
      includePath = "./lib"
    }
  }
})

lsp.configure('yaml', {
  settings = {
    customTags = {
      "!fn",
      "!And",
      "!If",
      "!Not",
      "!Equals",
      "!Or",
      "!FindInMap sequence",
      "!Base64",
      "!Cidr",
      "!Ref",
      "!Ref Scalar",
      "!Sub",
      "!GetAtt",
      "!GetAZs",
      "!ImportValue",
      "!Select",
      "!Split",
      "!Join sequence"
    },
  }
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = true,
})

vim.g.rustfmt_autosave = 1
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
