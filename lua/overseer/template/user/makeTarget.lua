return {
  name = "Make: target",
  builder = function(args)
    return {
      cmd = {"make"},
      args = {args.target},
    }
  end,
  params = {
    target = {
      type = "string",
      optional = false,
      prompt = "Make target:",
    },
  },
}
