return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("black-metal").setup({

      -- Can be one of: bathory | burzum | dark-funeral | darkthrone | emperor | gorgoroth 
      -- | immortal | impaled-nazarene | khold | marduk | mayhem | nile | taake | thyrfing | venom | windir
      theme = "khold",
      variant = "dark",
      -- Don't set background
      transparent = false,

      code_style = {
        comments = "italic",
        conditionals = "none",
        functions = "none",
        keywords = "none",
        headings = "bold", -- Markdown headings
        operators = "none",
        keyword_return = "none",
        strings = "none",
        variables = "none",
      },

    })
    require("black-metal").load()
  end,
}
