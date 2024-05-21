<!DOCTYPE html>
<html lang="en">
<body>

<h1>Neovim Setup Guide</h1>
<p>This is a Neovim configuration guide for Windows, but you can easily cater to Linux/MacOS if needed by checking out the links and their respective commands.</p>

<h2>Neovim Installation</h2>

- [Install Chocolatey](https://chocolatey.org/install)
- [Install Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)
    - Setup Mason bin folder to path
- [Nerd Fonts](https://www.nerdfonts.com/)
    - Currently using  [FiraMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- [GIT Installation](https://git-scm.com/downloads)

<h2>Install GitHub Copilot</h2>
<ul>
    <li>Neovim, Windows (PowerShell Command):
        <code>git clone https://github.com/github/copilot.vim.git `
  $HOME/AppData/Local/nvim/pack/github/start/copilot.vim</code>
    </li>
    <li>Vim, Windows (PowerShell Command):
        <code>git clone https://github.com/github/copilot.vim.git `
  $HOME/vimfiles/pack/github/start/copilot.vim</code>
    </li>
    <li>Neovim, Linux/macOS:
        <code>git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim</code>
    </li>
    <li>Vim, Linux/macOS:
        <code>git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim</code>
    </li>
</ul>

<h2>Windows Subsystem for Linux (WSL) Setup</h2>
<ul>
    <li>Enable the Windows Subsystem for Linux (WSL):
        <code>dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart</code>
    </li>
    <li>Enable Virtual Machine Platform:
        <code>dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart</code>
    </li>
    <li>Set WSL to use WSL2:
        <code>wsl --set-default-version 2</code>
    </li>
    <li>Install the Debian Linux Distribution:
        <code>wsl --install -d Debian</code>
    </li>
    <li>Check the status of WSL and list installed distributions with verbose output:
        <code>wsl --list --verbose</code>
    </li>
</ul>

</body>
</html>

