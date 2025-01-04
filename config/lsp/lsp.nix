# Language Server Protocol (LSP) configuration allows to use language servers for various programming languages.
# Code completion
# Error detection
# Jump to definition
# Auto-formatting
# Documentation on hover
# Consistent development experience
# see list of language servers: https://langserver.org/

# Languages/Technologies:
# - bashls:       Shell scripting
# - dockerls:     Dockerfile
# - gopls:        Go
# - jsonls:       JSON
# - marksman:     Markdown
# - nil_ls:       Nix
# - pyright:      Python
# - ts_ls:        TypeScript/JavaScript
# - lua_ls:       Lua
# - tailwindcss:  CSS framework
# - cssls:        CSS
# - html:         HTML
# - htmx:         HTMX extensions
# - solargraph:   Ruby
# - yamlls:       YAML
# - taplo:        TOML


{pkgs, ...}: {
  plugins.lsp = {
    enable = pkgs.lib.mkDefault true;
    servers = {
      bashls.enable = pkgs.lib.mkDefault true;
      dockerls.enable = pkgs.lib.mkDefault true;
      gopls.enable = pkgs.lib.mkDefault true;
      jsonls.enable = pkgs.lib.mkDefault true;
      marksman.enable = pkgs.lib.mkDefault true;
      nil_ls.enable = pkgs.lib.mkDefault true;
      pyright.enable = pkgs.lib.mkDefault true;
      ts_ls.enable = pkgs.lib.mkDefault true;
      lua_ls.enable = pkgs.lib.mkDefault true;
      tailwindcss.enable = pkgs.lib.mkDefault true;
      cssls.enable = pkgs.lib.mkDefault true;
      html.enable = pkgs.lib.mkDefault true;
      htmx.enable = pkgs.lib.mkDefault true;
      solargraph.enable = pkgs.lib.mkDefault true;
      yamlls.enable = pkgs.lib.mkDefault true;
      taplo.enable = pkgs.lib.mkDefault true;
    };
  };

  plugins.lsp-format.enable = pkgs.lib.mkDefault true;
}
