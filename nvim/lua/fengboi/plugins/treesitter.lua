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
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },
  auto_install = true,
})
