return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      arg = "leetcode.nvim",

      lang = "java",

      storage = {
        home = "/Users/sumedhbhat/Documents/CompetitiveCoding/LeetCode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },

      plugins = {
        non_standalone = false,
      },

      logging = true,
      injector = {
        ["cpp"] = {
          before = { "#include <__std_clang_module>", "using namespace std;" },
        },
      },

      cache = {
        update_interval = 60 * 60 * 24 * 1,
      },

      console = {
        open_on_runcode = true,

        dir = "row",

        size = {
          width = "90%",
          height = "75%",
        },

        result = {
          size = "60%",
        },

        testcase = {
          virt_text = true,

          size = "40%",
        },
      },

      description = {
        position = "left",

        width = "40%",

        show_stats = true,
      },

      hooks = {
        ["enter"] = {},

        ["question_enter"] = {},

        ["leave"] = {},
      },

      keys = {
        toggle = { "q" }, ---@type string|string[]
        confirm = { "<CR>" }, ---@type string|string[]

        reset_testcases = "r", ---@type string
        use_testcase = "U", ---@type string
        focus_testcases = "H", ---@type string
        focus_result = "L", ---@type string
      },

      theme = {},

      image_support = false,
    },
  },
}
