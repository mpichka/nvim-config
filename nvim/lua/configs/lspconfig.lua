require("nvchad.configs.lspconfig").defaults()

local servers = {
  "lua_ls",
  "html",
  "cssls",
  "ts_ls",
  "eslint",
  "sqlls",
}

vim.lsp.config('ts_ls', {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = { "tsconfig.json", "jsconfig.json", ".git" },
  on_attach = function(client, bufnr)
    -- Override diagnostics handler to filter specific messages
    local orig_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
    vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
      if not result.diagnostics then return end

      local filtered = {}
      for _, diag in ipairs(result.diagnostics) do
        if not string.find(diag.message, "may be converted to an ES module") then
          table.insert(filtered, diag)
        end
      end

      result.diagnostics = filtered
      orig_handler(_, result, ctx, config)
    end
  end
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
