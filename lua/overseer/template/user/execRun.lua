return {
	name = "Run Project",
	builder = function ()
		local cmd = { "make" }
		return {
			cmd = cmd,
      args = {"run"},
			components = {
				{"on_output_quickfix",set_diagnostics=true},
				"on_result_diagnostics",
				"default",
			}
		}
	end,
}
