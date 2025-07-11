return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"c", "rust", "lua", "python", "css", "html", "query", "markdown", "markdown_inline"},

      sync_installed = false,
      auto_install = true,

      highlight_enable = { enable = true },
      indent = { enable = true},

      additional_vim_regex_highlighting = false,
    })
  end
}
