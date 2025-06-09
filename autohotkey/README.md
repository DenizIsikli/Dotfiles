# Fix: Ctrl+Alt Symbol Input on Danish Keyboard (Alacritty + WSL)

## Problem

On Danish layouts, Windows treats Ctrl+Alt as AltGr, breaking symbol input like {, [, | in Alacritty and WSL.

## Solution

Use AutoHotkey v2 on Windows to remap `Ctrl+Alt` key combinations to the desired symbols.

## Setup

1. **Install AutoHotkey v2** from: https://www.autohotkey.com/

2. **Create a script** file, e.g., `fix_keys.ahk`, with the following content:

```ahk
^!7::SendText("{")
^!0::SendText("}")
^!8::SendText("[")
^!9::SendText("]")
^!<::SendText("|")
```

3. **Run the script**: Double-click the `.ahk` file.

4. **(Optional) Start on boot**:
   - Press `Win + R`, type `shell:startup`, and place a shortcut to the script in the folder.

This enables `Ctrl+Alt` symbol input for `{}`, `[]`, and `|` in Alacritty and WSL on a Danish keyboard layout.
