<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neovim Setup Guide</title>
</head>
<body>
<h1>Neovim Setup Guide</h1>

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
    <li>Paste command in Neovim:
        <code>:set paste (Shift + Right-Click)</code>
    </li>
    <li>Vim-Plug Installation (<a href="https://github.com/junegunn/vim-plug">GitHub Repository</a>):
        <ol>
            <li>Install curl:
                <code>sudo apt install curl</code>
            </li>
            <li>Download Plug.vim:
                <code>sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'</code>
            </li>
        </ol>
    </li>
    <li>GIT Installation:
        <code>sudo apt install git</code>
    </li>
</ul>

<h2>Conqueror Of Completion (CoC) Setup:</h2>
<ul>
    <li>Install npm:
        <code>sudo apt install npm</code>
    </li>
    <li>Install Node.js and Yarn through Chocolatey</li>
    <li>Install Yarn packages:
        <ol>
            <li>Run <code>yarn install</code> under coc.nvim in the "plugged" folder</li>
            <li>Run <code>yarn build</code> under coc.nvim in the "plugged" folder</li>
        </ol>
    </li>
    <li>Install Node.js:
        <code>sudo apt install nodejs</code>
    </li>
</ul>

<h2>Conqueror Of Completion (CoC) Python Setup:</h2>
<ul>
    <li>Install CoC Python module:
        <code>CocInstall coc-python</code>
    </li>
    <li>Install Python 3 and pip:
        <code>sudo apt install python3-pip</code>
    </li>
    <li>Install Jedi:
        <code>pip3 install jedi</code>
    </li>
</ul>
</body>
</html>
