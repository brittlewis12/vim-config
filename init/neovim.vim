if has("nvim")
  " Rust Analyzer setup for NeoVim

  lua << EOF

  vim.g.rustaceanvim = {
    tools = {
      -- hover_actions = {
      --   auto_focus = true,
      -- },
      float_win_config = {
        auto_focus = true,
      },
    },
    server = {
      on_attach = function(client, bufnr)
        -- you can also put keymaps in here
        vim.lsp.inlay_hint.enable(bufnr, true)
      end,
      --     settings = {
      --       -- rust-analyzer language server configuration
      --       ["rust-analyzer"] = {},
      --     },
      --   },
      --   -- DAP configuration
      --   dap = {},
    },
  }
EOF
endif
