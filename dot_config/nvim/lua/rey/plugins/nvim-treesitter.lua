return {
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
	build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.config")

    configs.setup({
      ensure_installed = {"c", "lua", "vim", "vimdoc", "cpp", "javascript", "html"},
      sync_install = false,
      highlight = { enable = true},
      indent = { enable = true},
    })
  end
}
