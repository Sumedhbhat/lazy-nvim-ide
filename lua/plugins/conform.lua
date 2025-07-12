local Lsp = require("utils.lsp")

return {
  {
    "stevearc/conform.nvim",
    optional = true,
    keys = {
      { "<leader>cn", "<cmd>ConformInfo<cr>", desc = "Conform Info" },
    },
    opts = {
      formatters_by_ft = {
        fish = {},
        go = { "goimports", "gofmt" },
        python = { "ruff_fix", "ruff_format" },
        php = { "pint" },
        rust = { "rustfmt" },
        yaml = { "prettierd", "prettier", "dprint" },
        ["markdown"] = { "prettierd", "prettier", "dprint" },
        ["markdown.mdx"] = { "prettierd", "prettier", "dprint" },
        ["javascript"] = { "deno_fmt", "prettierd", "prettier", "biome", "dprint" },
        ["javascriptreact"] = { "deno_fmt", "prettierd", "prettier", "biome", "dprint" },
        ["typescript"] = { "deno_fmt", "prettierd", "prettier", "biome", "dprint" },
        ["typescriptreact"] = { "prettierd", "prettier", "biome" },
        ["svelte"] = { "deno_fmt", "prettierd", "prettier", "biome", "dprint" },
      },
      formatters = {
        biome = {
          condition = function()
            local path = Lsp.biome_config_path()
            -- Skip if biome.json is in nvim
            local is_nvim = path and string.match(path, "nvim")

            if path and not is_nvim then
              return true
            end

            return false
          end,
        },
        deno_fmt = {
          condition = function()
            return Lsp.deno_config_exist()
          end,
        },
        dprint = {
          condition = function()
            return Lsp.dprint_config_exist()
          end,
        },
        prettier = {
          condition = function()
            local path = Lsp.biome_config_path()
            -- Skip if biome.json is in nvim
            local is_nvim = path and string.match(path, "nvim")

            if path and not is_nvim then
              return false
            end

            return true
          end,
        },
        prettierd = {
          condition = function()
            local path = Lsp.biome_config_path()
            -- Skip if biome.json is in nvim
            local is_nvim = path and string.match(path, "nvim")

            if path and not is_nvim then
              return false
            end

            return true
          end,
        },
      },
    },
  },
}
