return {
	"mfussengger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussengger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function(_, opts)
		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)
	end,
}
