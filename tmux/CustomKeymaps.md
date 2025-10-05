# Custom Tmux Keymaps

## General
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `source-file ~/.tmux.conf` | `<prefix> + r` | Any | Reload tmux configuration |
| `previous-window` | `C-o` | Any | Switch to previous window |
| `next-window` | `C-p` | Any | Switch to next window |
| `select-pane -L` | `<prefix> + h` | Any | Move to left pane |
| `select-pane -D` | `<prefix> + j` | Any | Move to bottom pane |
| `select-pane -U` | `<prefix> + k` | Any | Move to top pane |
| `select-pane -R` | `<prefix> + l` | Any | Move to right pane |
| `resize-pane -U 5` | `C-Up` | Any | Increase pane height |
| `resize-pane -D 5` | `C-Down` | Any | Decrease pane height |
| `resize-pane -L 5` | `C-Left` | Any | Decrease pane width |
| `resize-pane -R 5` | `C-Right` | Any | Increase pane width |
| `list-sessions` | `<prefix> + l` | Any | List all tmux sessions |
| `kill-server` | `<prefix> + q` | Any | Kill all tmux sessions (destructive) |

## Mouse & Modes
| Command | Keymap | Mode | Description |
|---------|--------|------|-------------|
| `mode-keys vi` | — | Any | Enable vi mode in copy mode |
| `set -g mouse on` | — | Any | Enable mouse support |

## Plugins
| Plugin Command | Keymap | Mode | Description |
|----------------|--------|------|-------------|
| `tree -C` (sidebar tree) | `t` | Any | Open sidebar tree |
| `focus sidebar tree` | `T` | Any | Focus sidebar tree |
| `open-search` | `S` | Any | Open URL search in browser |
