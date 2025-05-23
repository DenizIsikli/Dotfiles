<!DOCTYPE html>
<html lang="en">
<body>

<h1>Neovim Setup Guide</h1>
<p>Following Neovim installation guide is specifically designed for Linux, although you can easily cater to Windows/MacOS if needed by checking out the links and their respective commands, as well as placing the <b>nvim</b> folder in the correct location on your machine.</p>

<h2>Neovim Installation (Linux)</h2>

- [Install GIT](https://git-scm.com/downloads)
- [Install Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md) (Optional)
- [Install Nerd Fonts](https://www.nerdfonts.com/font-downloads)
    - Currently using FiraMono Nerd Font

<h2>Neovim Installation (Windows)</h2>

- [Install GIT](https://git-scm.com/downloads)
- [Install Chocolatey with Powershell](https://chocolatey.org/install)
- [Install Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md) (Optional)
- [Setup Mason.nvim](https://github.com/williamboman/mason.nvim)
    - Setup Mason bin folder to path
- [Install Nerd Fonts](https://www.nerdfonts.com/font-downloads)
    - Currently using FiraMono Nerd Font

<h2>Install GitHub Copilot</h2>
<p>Neovim, Windows (PowerShell Command):</p>
<pre><code>git clone https://github.com/github/copilot.vim.git `
$HOME/AppData/Local/nvim/pack/github/start/copilot.vim</code></pre>

<p>Vim, Windows (PowerShell Command):</p>
<pre><code>git clone https://github.com/github/copilot.vim.git `
$HOME/vimfiles/pack/github/start/copilot.vim</code></pre>

<p>Neovim, Linux/macOS:</p>
<pre><code>git clone https://github.com/github/copilot.vim.git \
~/.config/nvim/pack/github/start/copilot.vim</code></pre>

<p>Vim, Linux/macOS:</p>
<pre><code>git clone https://github.com/github/copilot.vim.git \
~/.vim/pack/github/start/copilot.vim</code></pre>

<h2>xclip</h2>
<p>Enable xclip:</p>
<pre><code>sudo apt update</code></pre>
<pre><code>sudo apt-get install -y xclip</code></pre>

<h2>Fd-find (fd)</h2>
<p>Fd-find Windows (Winget):</p>
<pre><code>winget install fd</code></pre>

<p>Fd-find Windows (Chocolatey):</p>
<pre><code>choco install fd</code></pre>

<p>Fd-find Linux (Debian):</p>
<pre><code>sudo apt-get install fd-find</code></pre>

<h2>Ripgrep (rg)</h2>
<p>Ripgrep Windows (Winget):</p>
<pre><code>winget install ripgrep</code></pre>

<p>Ripgrep Widnows (Chocolatey):</p>
<pre><code>choco install ripgrep</code></pre>

<p>Ripgrep Linux (Debian):</p>
<pre><code>sudo apt-get install ripgrep</code></pre>
</body>
</html>
