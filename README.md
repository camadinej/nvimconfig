
# camadinej's neovim config: Windows 11, 2026

## File Structure:

```
lua/: the backend logic of this config
|--config/:
|  |-keymaps.lua
|  |-lazy.lua
|  |-options.lua
|--plugins/:
|  |-colorscheme.lua
|  |-completion.lua
|  |-lsp.lua
|  |-telescope.lua
|  |-treesitter.lua
```

### config:

This directory contains the main lazy loader configuration. It loads everything in the plugins directory. It also contains logic for 

### plugins:

This directory contains the configurations of each plugin that we use to achieve IDE-adjacent behavior. We currently have the following:

<ol>
  <li>The tokyo-night colorscheme</li>
  <li>nvim-cmp code completion engine</li>
  <li>Mason LSP manager</li>
  <li>telescope fuzzy finder</li>
  <li>treesitter syntax highlighter</li>
</ol>



