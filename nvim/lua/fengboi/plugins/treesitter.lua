local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then return end

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "markdown",
    "bash",
    "lua",
    "python"
    "vim",
    "dockerfile",
    "gitignore",
  },
  auto_install = true,
})