return {
	name = "Execute Tests",
	builder = function ()
		local cmd = { "make" }
		return {
			cmd = cmd,
      args = {"test"},
			components = {
				{"on_output_quickfix",set_diagnostics=true},
				"on_result_diagnostics",
				"default",
			}
		}
	end,
  conditions = {},
}
