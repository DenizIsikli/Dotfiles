return {
    -- Lazygit installation for Windows 10 or later (Winget): winget install -e --id=JesseDuffield.lazygit 
    -- Lazygit installation for Debian 12 (Bookworm): sudo apt install lazygit
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>5", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    }
}
