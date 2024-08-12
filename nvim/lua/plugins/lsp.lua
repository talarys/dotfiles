return {
  "neovim/nvim-lspconfig",
  opts = {
    require("lspconfig").gleam.setup({}),
    -- require("lspconfig").biome.setup({
    --   filetypes = {
    --     "javascript",
    --     "javascriptreact",
    --     "json",
    --     "jsonc",
    --     "typescript",
    --     "typescript.tsx",
    --     "typescriptreact",
    --     "astro",
    --     "svelte",
    --     "vue",
    --   },
    -- }),
    require("lspconfig").cssls.setup({
      settings = {
        css = { validate = true, lint = {
          unknownAtRules = "ignore",
        } },
        scss = { validate = true, lint = {
          unknownAtRules = "ignore",
        } },
        less = { validate = true, lint = {
          unknownAtRules = "ignore",
        } },
      },
    }),
    inlay_hints = { enabled = false },
    document_highlight = { enabled = false },
  },
}
