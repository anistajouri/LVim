# LVim: Minimalist NeoVim Configuration

## Overview
A streamlined NeoVim configuration built with [NixVim](https://github.com/nix-community/nixvim), inspired by [LunarVim](https://lunarvim.org).

## Philosophy
- Fast, stable, and reliable text editing
- Minimalist approach
- Declarative configuration
- Nix-based management


## Usage and Installation

You can run this flake directly to try it out:

```bash
nix run github:anistajouri/LVim
```

You can add LVim as an input to your flake configuration like this:

```nix
{
    inputs.lvim.url = "github:anistajouri/LVim";
}
```

## Overview

Main Components:
- LSPs (./config/lsp/lsp.nix)
- Formatters and linters (./config/lsp/none-ls.nix)
  - Support for common languages
  - Configuration file types
  - TreeSitter-related plugins from LunarVim

UI Elements:
- lualine (./config/lualine.nix)
- bufferline (./config/bufferline.nix)
- telescope (./config/ui/telescope.nix)

Keybindings:
- Standard keymaps (./config/keymaps/keymaps-general.nix)
- WhichKey integration (./config/keymaps/whichkey.nix)
  - Makes plugin keymaps discoverable
- Plugin-specific keymaps (./config/keymaps/keymaps-plugins.nix)
