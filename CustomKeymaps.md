# Custom Neovim Keymaps

## General
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
|`:bd`   | `<leader>T` | Normal | Close buffer or go to Alpha dashboard |
|`:echo expand("%:p:h")<CR>`    | `<leader>½` | Normal | Show current file path |

## xclip
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `"+y`   | `<leader>y`| Visual | Copy marked |
| `+d`    | `<leader>q`| Visual | Copy and delete |
| `:%y+<CR>`| `<leader>Y`| Normal | Copy entire file |

## Window Resizing 
#### Will resize terminal if only one window is open and you decrease the window size
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:resize +5<CR>`| `<leader>6`| Normal | Increase window height by 5 lines |
| `:resize -5<CR>`| `<leader>5`| Normal | Decrease window height by 5 lines |

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
| `<cmd>lua vim.lsp.buf.definition()<CR>`| `gd`| Normal | Go to definition |

## Oil
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `Oil Parent Directory`| `+`| Normal | Open parent directory |

## Telescope
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `select_horizontal`             | `<C-w>`   | Insert/Normal | Open file in horizontal split  |
| `select_vertical`               | `<C-r>`   | Insert/Normal | Open file in vertical split    |
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
