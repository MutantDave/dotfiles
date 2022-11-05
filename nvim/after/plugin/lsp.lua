local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local saga_status, saga = pcall(require, "lspsaga")
if (not saga_status) then return end


local nnoremap = require("user.keymap").nnoremap

local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

nvim_lsp.tailwindcss.setup {}
nvim_lsp.jsonls.setup {}
nvim_lsp.vuels.setup {}

vim.o.updatetime = 50

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript',
    rust = 'rust'
  }
}
nnoremap('gd', '<Cmd>Lspsaga lsp_finder<CR>')
nnoremap('gp', '<Cmd>Lspsaga peek_definition<CR>')
nnoremap('gr', '<Cmd>Lspsaga rename<CR>')
nnoremap('K', '<Cmd>Lspsaga hover_doc<CR>')
nnoremap('<leader>ca', '<Cmd>Lspsaga code_action<CR>')


-- Rust
local cmp = require 'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
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
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})

vim.opt.completeopt= {"menuone","noinsert","noselect"}
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

local opts = {
  tools = {
    runnables = {
      use_telescope = true
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
  server = {
    -- on_attach is a callback called when the language server attachs to the buffer
    -- on_attach = on_attach,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy"
        },
        diagnostics = {
          disabled = { "unresolved-proc-macro" }
        },
        procMacro = {
          enable = false,
          attributes = {
            enabled = false
          },
        },
      }
    }
  },
}


require('rust-tools').setup(opts)
