# Custom Neovim Keymaps

## General
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:bd`   | `<leader>T` | Normal | Close buffer or go to Alpha dashboard |
| `:let @+ = expand('%:p:h') \| echo @+<CR>` | `<leader>½` | Normal | Copy and show current file path |
| `:let @+ = expand('%:p') \| echo @+<CR>`    | `<leader>§`    | Normal | Copy and show full file path with filename |
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
| `g_` | `t` | Visual | Move to the end of the line |
| `^` | `e` | Visual | Move to the first non-blank character of the line |

## Line Movement  
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:m .+1<CR>==` | `<A-j>` | Normal | Move current line **down** |
| `:m .-2<CR>==` | `<A-k>` | Normal | Move current line **up** |
| `<Esc>:m .+1<CR>==gi` | `<A-j>` | Insert | Move current line **down** and re-enter insert mode |
| `<Esc>:m .-2<CR>==gi` | `<A-k>` | Insert | Move current line **up** and re-enter insert mode |
| `:m '>+1<CR>gv=gv` | `<A-j>` | Visual | Move selected lines **down** |
| `:m '<-2<CR>gv=gv` | `<A-k>` | Visual | Move selected lines **up** |
| `O<Esc>`               | `<M-h>` | Normal | Insert blank line **above** without entering insert mode |
| `o<Esc>`               | `<M-l>` | Normal | Insert blank line **below** without entering insert mode |

## Comment
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `gcc`| `gcc`| Normal | Toggle comment for the current line |

## GitHub Copilot
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `copilot#Accept("<CR>")`| `<C-J>`| Insert | Accept GitHub Copilot suggestion |
| `:CopilotToggle<CR>`| `<leader>ct`| Normal | Toggle GitHub Copilot |

## Flash
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `require("flash").jump()`       | `<leader>fs`     | Normal | Flash-powered jump search |

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

## Neotree
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:Neotree<CR>`| `<C-t>`| Normal | Toggle Neotree |
| `open_vsplit` | `h` | Neo‑tree | Open file in **vertical** split (inside Neo‑tree) |
| `open_split`  | `l` | Neo‑tree | Open file in **horizontal** split (inside Neo‑tree) |

## Telescope
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `select_horizontal`             | `<C-l>`   | Insert/Normal | Open file in horizontal split  |
| `select_vertical`               | `<C-h>`   | Insert/Normal | Open file in vertical split    |
| `select_tab`                    | `<C-t>`   | Insert/Normal | Open file in new tab
| `move_selection_previous`       | `<C-k>`   | Insert/Normal | Move up in file selection |
| `move_selection_next`           | `<C-j>`   | Insert/Normal | Move down in file selection |
| `require('telescope.actions').preview_scrolling_up`       | `<C-u>`   | Insert/Normal | Scroll up in preview |
| `require('telescope.actions').preview_scrolling_down`     | `<C-d>`   | Insert/Normal | Scroll down in preview |
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
