# Custom Neovim Keymaps

## General
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:bd`   | `<leader>T` | Normal | Close buffer or go to Alpha dashboard |
| `:echo expand("%:p:h")<CR>`    | `<leader>½` | Normal | Show current file path |
| `>gv`   | `>` | Visual | Indent and keep selection |
| `<gv`   | `<` | Visual | Outdent and keep selection |
| `<C-O>==` | `<C-F>` | Insert | Aligns the current line |
| `==` | `<C-F>` | Normal | Aligns the current line |

## xclip
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `"+y`   | `<leader>y`| Visual | Copy marked |
| `+d`    | `<leader>q`| Visual | Copy and delete |
| `:%y+<CR>`| `<leader>Y`| Normal | Copy entire file |

## Window Resizing  
#### Resize the currently active split window (code or terminal). Works seamlessly with multiple splits.  

| Command                    | Keymap   | Mode   | Description                         |
|----------------------------|----------|--------|-------------------------------------|
| `:resize +5`               | `<C-k>`  | Normal | Increase window **height** by 5 lines (resize upward) |
| `:resize -5`               | `<C-j>`  | Normal | Decrease window **height** by 5 lines (resize downward) |
| `:vertical resize +5`      | `<C-l>`  | Normal | Increase window **width** by 5 columns (resize right) |
| `:vertical resize -5`      | `<C-h>`  | Normal | Decrease window **width** by 5 columns (resize left)  |

## Neovim Window Navigation
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<C-w>h`| `<leader>h`| Normal | Move to the window on the left |
| `<C-w>j`| `<leader>j`| Normal | Move to the window below |
| `<C-w>k`| `<leader>k`| Normal | Move to the window above |
| `<C-w>l`| `<leader>l`| Normal | Move to the window on the right |

## End of Line Navigation
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `g_` | `t` | Normal | Move to the end of the line |
| `^` | `e` | Normal | Move to the first non-blank character of the line |

## Neotree
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:Neotree<CR>`| `<C-t>`| Normal | Toggle Neotree |

## Comment
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `gcc`| `gcc`| Normal | Toggle comment for the current line |

## GitHub Copilot
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `copilot#Accept("<CR>")`| `<C-J>`| Insert | Accept GitHub Copilot suggestion |
| `:CopilotToggle<CR>`| `<leader>ct`| Normal | Toggle GitHub Copilot |

## LSP
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `vim.lsp.buf.definition()`        | `gd`    | Normal | Go to definition |
| `vim.lsp.buf.implementation()`    | `gi`    | Normal | Go to implementation |
| `vim.lsp.buf.references()`        | `gr`    | Normal | Go to references |
| `vim.lsp.buf.hover()`             | `K`     | Normal | Show hover information |
| `vim.lsp.buf.rename()`            | `<leader>rn` | Normal | Rename symbol |
| `vsplit + vim.lsp.buf.definition()` | `gdj`   | Normal | Open definition in vertical split |
| `split + vim.lsp.buf.definition()`  | `gdk`   | Normal | Open definition in horizontal split |
| `vsplit + vim.lsp.buf.implementation()` | `gij` | Normal | Open implementation in vertical split |
| `split + vim.lsp.buf.implementation()`  | `gik` | Normal | Open implementation in horizontal split |

## Oil
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `Oil Parent Directory`| `+`| Normal | Open parent directory |

## Telescope
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `select_horizontal`             | `<C-k>`   | Insert/Normal | Open file in horizontal split  |
| `select_vertical`               | `<C-j>`   | Insert/Normal | Open file in vertical split    |
| `select_tab`                    | `<C-t>`   | Insert/Normal | Open file in new tab
| `<cmd>Telescope find_files<CR>`| `<leader>3`| Normal | Find files |
| `<cmd>Telescope oldfiles<CR>`| `<leader>1`| Normal | Open recent files |

## Transparent Background
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>TransparentToggle<CR>`| `<leader>0`| Normal | Toggle transparent background |

## Trouble
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>Trouble diagnostics toggle<CR>`| `<leader>xx`| Normal | Diagnostics (Trouble) |
| `<cmd>Trouble symbols toggle focus=false<CR>`| `<leader>xs`| Normal | Toggle (Trouble) |

## Flash
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `require("flash").jump()`       | `/`     | Normal | Flash-powered jump search |

## Ufo
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `ufo#toggleFold()`| `za`| Normal | Toggle fold |

## Search
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:nohlsearch` | `<leader>9` | Normal | Clear search highlights |
| `*` | `*` | Normal | Search **forward** for the word under cursor |
| `#` | `#` | Normal | Search **backward** for the word under cursor |
