vim.keymap.del("n", "s")

vim.keymap.set("n", "<F7>", function()
  vim.cmd([[ToggleTerm]])
end, { desc = "Open terminal" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })

-- stylua: ignore start
vim.keymap.set({ "n", "v" }, "<F5>", function() require("dap").continue() end, { desc = "Continue" })
vim.keymap.set({ "n", "v" }, "<F9>", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set({ "n", "v" }, "<F10>", function() require("dap").step_over() end, { desc = "Step Over" })
vim.keymap.set({ "n", "v" }, "<F11>", function() require("dap").step_into() end, { desc = "Step Into" })
-- stylua: ignore end

vim.keymap.set({ "n" }, "<cr>", "zz", { desc = "Centralize screen" })

vim.keymap.set({ "t" }, "<esc><esc>", "<C-\\><C-n>", { desc = "Quite terminal mode" })

-- vim.keymap.set("n", "<leader>rn", ":IncRename ")

vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

require("inc_rename").setup({
  input_buffer_type = "snacks",
})
