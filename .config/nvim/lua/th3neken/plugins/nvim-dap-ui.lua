return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussengger/nvim-dap", "nvim-neotest/nvim-nio" },
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()
		dap.listeners.after.event_initialized["daupui_config"] = function()
			dapui.open()
		end
		dap.listeners.after.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.after.event_exited["dapui_config"] = function()
			dapui.close()
		end
	end,
}
