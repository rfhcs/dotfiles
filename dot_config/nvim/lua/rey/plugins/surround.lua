return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use main branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      surrounds = {
        -- Custom Environment binding ('e')
        ["e"] = {
          add = function()
            local env = vim.fn.input("Environment: ")
            if env == "" then return nil end
            return { { "\\begin{" .. env .. "}" }, { "\\end{" .. env .. "}" } }
          end,
        },
        -- Custom Command binding ('c')
        ["c"] = {
          add = function()
            local cmd = vim.fn.input("Command: ")
            if cmd == "" then return nil end
            return { { "\\" .. cmd .. "{" }, { "}" } }
          end,
        },
      },
    })
  end,
}
