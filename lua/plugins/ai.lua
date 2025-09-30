return {
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    build = ":Codeium Auth",
    opts = {
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        key_bindings = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
    },
  },
  {
    "marcinjahn/gemini-cli.nvim",
    cmd = "Gemini",
    keys = {
      { "<leader>a/", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
      { "<leader>aa", "<cmd>Gemini ask<cr>", desc = "Ask Gemini", mode = { "n", "v" } },
      { "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add File" },
    },
    dependencies = {
      "folke/snacks.nvim",
    },
    config = true,
  },
}
