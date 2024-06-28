# Tmux Shortcuts & Commands / Cheatsheet

*Note: The default prefix key (prefix key) is `Ctrl-b`. This guide uses `<prefix>` to denote the prefix key, which you can customize.*

## General
| Command                   | Description                            |
|---------------------------|----------------------------------------|
| `tmux`                    | Start a new tmux session               |
| `tmux new -s name`        | Start a new session named `name`       |
| `tmux ls`                 | List all sessions                      |
| `tmux list-sessions`      | List all sessions                      |
| `tmux attach -t name`     | Attach to a session named `name`       |
| `tmux detach`             | Detach from the current session        |
| `tmux kill-server`        | Kill the tmux server, ending all sessions |
| `tmux kill-session -t name` | Kill the session named `name`        |

## Session Management
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> s`          | List all sessions                       |
| `Ctrl-<prefix> $`          | Rename the current session              |
| `Ctrl-<prefix> d`          | Detach from the current session         |
| `Ctrl-<prefix> (`          | Switch to the previous session          |
| `Ctrl-<prefix> )`          | Switch to the next session              |

## Window Management
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> c`          | Create a new window                     |
| `Ctrl-<prefix> &`          | Kill the current window                 |
| `Ctrl-<prefix> ,`          | Rename the current window               |
| `Ctrl-<prefix> w`          | List all windows                        |
| `Ctrl-<prefix> n`          | Move to the next window                 |
| `Ctrl-<prefix> p`          | Move to the previous window             |
| `Ctrl-<prefix> 0`-`9`      | Move to window 0-9                      |
| `Ctrl-<prefix> l`          | Move to the previously selected window  |
| `Ctrl-<prefix> f`          | Find window by name                     |

## Pane Management
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> %`          | Split the window vertically             |
| `Ctrl-<prefix> "`          | Split the window horizontally           |
| `Ctrl-<prefix> x`          | Kill the current pane                   |
| `Ctrl-<prefix> o`          | Move to the next pane                   |
| `Ctrl-<prefix> ;`          | Toggle between the last two panes       |
| `Ctrl-<prefix> {`          | Swap current pane with the previous one |
| `Ctrl-<prefix> }`          | Swap current pane with the next one     |
| `Ctrl-<prefix> q`          | Display pane numbers                    |
| `Ctrl-<prefix> z`          | Toggle zoom for the current pane        |

## Synchronization
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> :setw synchronize-panes on`  | Enable pane synchronization   |
| `Ctrl-<prefix> :setw synchronize-panes off` | Disable pane synchronization  |

## Resizing Panes
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> Ctrl-arrow` | Resize pane in the specified direction  |

## Copy Mode
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> [`          | Enter copy mode                         |
| `q`                        | Quit copy mode                          |
| `Space`                    | Start selection                         |
| `Enter`                    | End selection and copy                  |
| `Ctrl-<prefix> ]`          | Paste the copied text                   |

## Miscellaneous
| Command                    | Description                             |
|----------------------------|-----------------------------------------|
| `Ctrl-<prefix> t`          | Show the current time                   |
| `Ctrl-<prefix> ?`          | List all key bindings                   |
| `Ctrl-<prefix> :`          | Enter the tmux command prompt           |
