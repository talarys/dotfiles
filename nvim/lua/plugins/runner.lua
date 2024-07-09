return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        mode = "better_term",
        better_term = {
          clean = true,
        },
        focus = false,
        filetype = {
          go = "make run $end",
          gleam = "gleam run $end",
          rust = "cargo run -q $end ",
          haskell = "cabal run $dir/.. -v0 $end",
        },
        vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<C-A-n>", ":RunCode<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false }),
        vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false }),
      })
    end,
  },
}
