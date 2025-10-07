return {
  -- The main Copilot plugin
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot', -- Allows for lazy-loading on command
    event = 'InsertEnter', -- Also lazy-load when entering Insert mode
    config = function()
      require('copilot').setup {
        -- Disable built-in inline suggestions if you use nvim-cmp and copilot-cmp,
        -- or if you plan to use sidekick.nvim's Next Edit Suggestions (NES).
        suggestion = {
          enabled = false, -- Disable the ghost text suggestions
        },
        panel = {
          enabled = false, -- Disable the suggestion panel
        },
        -- The LSP server is required for sidekick.nvim's Next Edit Suggestions (NES)
        -- and the main Copilot functionality.
        lsp = {
          enable = true,
          -- You can specify your Node.js command path if it's not in your PATH
          -- copilot_node_command = vim.fn.expand("$HOME") .. "/.config/nvm/versions/node/v18.0.0/bin/node",
        },
      }
    end,
  },

  -- Optional: Integrate Copilot into the nvim-cmp completion menu (popular choice)
  {
    'zbirenbaum/copilot-cmp',
    dependencies = 'copilot.lua',
    opts = {},
  },
}
