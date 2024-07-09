return {
  "neovim/nvim-lspconfig",
  opts = function()
    require("lspconfig").gleam.setup({})
  end,
}
