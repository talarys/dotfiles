return {
  {
    "vhyrro/luarocks.nvim",
    name = "luarocks",
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    },
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    cmd = "Rest",
    main = "rest-nvim",
    opts = {
      result = {
        split = {
          horizontal = true,
        },
      },
    },
    keys = {
      { "<leader>rr", "<cmd>Rest run<cr>", desc = "Run REST request" },
    },
    dependencies = { "luarocks.nvim" },
  },
}
