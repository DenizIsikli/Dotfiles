<!DOCTYPE html>
<html lang="en">
<body>
<h1>Neovim Setup Guide</h1>
<p>Welcome to the Neovim Setup Guide! This guide will help you set up Neovim on your system and configure essential plugins for a productive coding environment.</p>

<h2>Windows Subsystem for Linux (WSL) Setup:</h2>
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

<h2>Neovim Installation:</h2>
<ul>
    <li>Install Neovim:
        <code>sudo apt install neovim</code>
    </li>
    <li>GIT Installation:
        <code>sudo apt install git</code>
    </li>
</ul>

<h2>Install Packer</h2>
<code>sh git clone --depth 1 https://github.com/wbthomason/packer.nvim\~/.local/share/nvim/site/pack/packer/start/packer.nvim</code>

<h2>Conqueror Of Completion (CoC) Setup:</h2>
<ul>
    <li>Install npm</li>
    <li>Install Node.js</li>
    <li>Install Yarn</li>
    </li>
</ul>

</body>
</html>

