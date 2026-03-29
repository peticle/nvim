vim.opt.termguicolors = true

require("colorizer").setup({
  options = {
    parsers = {
      names = {
        enable = false,
      },
      sass = {
        enable = true,
      },
      css_var_rgb = {
        enable = true,
      },
      css_var = {
        enable = true,
      },
    },
    display = {
      mode = "virtualtext",
      virtualtext = {
        position = "eol",
      },
    },
  }
})
