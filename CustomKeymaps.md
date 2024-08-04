# Custom Neovim Keymaps

## xclip
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `"+y`   | <leader>y | Visual | Copy marked |
| `:%y+<CR>`| <leader>Y | Normal | Copy entire file |

## Window Resizing (Will resize terminal if only one window is open and you decrease the window size)
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:resize +5<CR>`| <leader>6 | Normal | Increase window height by 5 lines |
| `:resize -5<CR>`| <leader>5 | Normal | Decrease window height by 5 lines |

## Neovim Window Navigation
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<C-w>h`| <leader>h | Normal | Move to the window on the left |
| `<C-w>j`| <leader>j | Normal | Move to the window below |
| `<C-w>k`| <leader>k | Normal | Move to the window above |
| `<C-w>l`| <leader>l | Normal | Move to the window on the right |

## Neotree
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `:Neotree<CR>`| <C-t> | Normal | Toggle Neotree |

## Comment
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `gcc`| gcc | Normal | Toggle comment for the current line |

## GitHub Copilot
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `copilot#Accept("<CR>")`| <C-J> | Insert | Accept GitHub Copilot suggestion |
| `:CopilotToggle<CR>`| <leader>ct | Normal | Toggle GitHub Copilot |

## LSP
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>lua vim.lsp.buf.definition()<CR>`| gd | Normal | Go to definition |

## Telescope
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>Telescope find_files<CR>`| <leader>3 | Normal | Find files |
| `<cmd>Telescope oldfiles<CR>`| <leader>1 | Normal | Open recent files |

## Transparent Background
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>TransparentToggle<CR>`| <leader>0 | Normal | Toggle transparent background |

## Trouble
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `<cmd>Trouble diagnostics toggle<CR>`| <leader>xx | Normal | Diagnostics (Trouble) |
| `<cmd>Trouble symbols toggle focus=false<CR>`| <leader>xs | Normal | Toggle (Trouble) |
