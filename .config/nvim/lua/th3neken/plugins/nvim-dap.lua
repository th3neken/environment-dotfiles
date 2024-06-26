return {
	"mfussengger/nvim-dap",
	config = function()
		vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" })
	end,
}
