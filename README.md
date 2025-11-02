# Nvim-config

Pretty much default [NvChad](https://nvchad.com/) framework, with [neovim-hybrid-theme](https://github.com/mpichka/neovim-hybrid-theme)

This configuration is for neovim v0.11.0 (LuaJIT 2.1.1741730670)

## Instalation

1. Install Neovim following [guide](https://github.com/neovim/neovim/blob/master/INSTALL.md)

Path to config file:

```
~./config/nvim/init.lua
```

2. Install NvChad following [guide](https://nvchad.com/docs/quickstart/install)

3. copy and replace your local nvim folder with content of this repository

4. Enter neovim, and after initialization enter `:Mason`. This will open package manager for LSP. Install following servers:
  - eslint-lsp
  - lua-language-server
  - typescript-language-server
5. Configs for `lspconfig` are already in place for selected servers.
6. Enter `<leader>+th`, which should open theme switcher, and select "neovim-hybrid" theme.
