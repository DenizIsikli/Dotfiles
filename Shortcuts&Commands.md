# Neovim Shortcuts & Commands

## General
| Command | Description               |
|---------|---------------------------|
| `:w`    | Save the file             |
| `:q`    | Quit                      |
| `:wq`   | Save and quit             |
| `:q!`   | Quit without saving       |
| `:help keyword` | Open help for keyword |

## Navigation
| Command | Description               |
|---------|---------------------------|
| `h`     | Move left                 |
| `j`     | Move down                 |
| `k`     | Move up                   |
| `l`     | Move right                |
| `gg`    | Go to start of the file   |
| `G`     | Go to end of the file     |
| `Ctrl + o` | Go back to last cursor position |
| `Ctrl + i` | Go forward to next cursor position |

## Tabs and Windows Management Navigation
| Command           | Description                          |
|-------------------|--------------------------------------|
| `:tabnew [file]`  | Open a new tab with an optional file |
| `:tabclose`       | Close the current tab                |
| `:tabnext`        | Go to the next tab                   |
| `:tabprev`        | Go to the previous tab               |
| `:tabfirst`       | Go to the first tab                  |
| `:tablast`        | Go to the last tab                   |
| `gt`              | Go to the next tab                   |
| `gT`              | Go to the previous tab               |
| `#{n}gt`          | Go to the nth tab                    |
| `Ctrl-w h`        | Move to the window on the left       |
| `Ctrl-w j`        | Move to the window below             |
| `Ctrl-w k`        | Move to the window above             |
| `Ctrl-w l`        | Move to the window on the right      |
| `Ctrl-w t`        | Move to the top-left window          |
| `Ctrl-w b`        | Move to the bottom-right window      |
| `Ctrl-w =`        | Make all windows equal height & width|
| `:split [file]`   | Split the window horizontally        |
| `:vsplit [file]`  | Split the window vertically          |

## Editing
| Command | Description               |
|---------|---------------------------|
| `i`     | Insert before the cursor  |
| `a`     | Insert after the cursor   |
| `o`     | Open a new line below     |
| `O`     | Open a new line above     |
| `r`     | Replace a single character|
| `R`     | Replace multiple characters |

## Deleting
| Command | Description               |
|---------|---------------------------|
| `x`     | Delete character under cursor |
| `dd`    | Delete line               |
| `dw`    | Delete word               |
| `d$`    | Delete to end of line     |

## Copy & Paste
| Command | Description               |
|---------|---------------------------|
| `yy`    | Yank (copy) a line        |
| `yw`    | Yank (copy) a word        |
| `p`     | Paste after cursor        |
| `P`     | Paste before cursor       |

## Undo & Redo
| Command | Description               |
|---------|---------------------------|
| `u`     | Undo                      |
| `Ctrl + r` | Redo                   |

## Visual Mode
| Command | Description               |
|---------|---------------------------|
| `v`     | Start visual mode         |
| `V`     | Start linewise visual mode|
| `Ctrl + v` | Start blockwise visual mode |

## Searching
| Command | Description               |
|---------|---------------------------|
| `/`     | Search forward            |
| `?`     | Search backward           |
| `n`     | Next search result        |
| `N`     | Previous search result    |

## Substitution
| Command | Description               |
|---------|---------------------------|
| `:s/old/new` | Substitute first occurrence in line |
| `:%s/old/new/g` | Substitute all occurrences in file |

## File, Buffer, and Window Management
| Command       | Description                             |
|---------------|-----------------------------------------|
| `:e filename` | Open a file in a new buffer             |
| `:e`          | Edit a new file                         |
| `:ls`         | List all open buffers                   |
| `:b#`         | Switch to a buffer by its number        |
| `:bd`         | Delete a buffer (close a file)          |
| `:bnext`      | Go to the next buffer                   |
| `:bprev`      | Go to the previous buffer               |
| `:bfirst`     | Move to the first buffer                |
| `:blast`      | Move to the last buffer                 |
| `:split`      | Split window horizontally               |
| `:vsplit`     | Split window vertically                 |
| `:split [file]`   | Split the window horizontally with an optional file |
| `:vsplit [file]`  | Split the window vertically with an optional file   |
