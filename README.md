# LVim

LVim is a declarative NeoVim configuration built with
[NixVim](https://github.com/nix-community/nixvim).

This configuration aims to keep the familiarity of
[LunarVim](https://lunarvim.org) while aggressively stripping away excessive
IDE-like features to focus on delivering a fast, stable and reliable _editor_
experience.

LVim aims to keep any manually written Lua code to an absolute minimum, and
for the purposes of this project any committed Lua files are considered to be
technical debt.

This configuration gradually came to be out of the aggressive pruning of
plugins that were unncessary for me in [dileep-kishore's neovim
configuration](https://github.com/dileep-kishore/neovim), which is also an
excellent configuration for people looking for a "maximalist" configuration.

![image](https://github.com/LGUG2Z/LVim/assets/13164844/df05aac6-f436-460e-a851-1796e8ae9456)

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

You can add the `inputs.lvim.overlays.default` overlay to your `nixpkgs` to
make `pkgs.lvim` available.

If you are using any of my [NixOS starter
templates](https://github.com/search?q=owner%3ALGUG2Z+nixos&type=repositories),
you would add this to the `overlays` list in the `nixpkgsWithOverlays` function
in `flake.nix`.




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
