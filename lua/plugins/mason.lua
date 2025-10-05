return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        -- formatters
        "prettier",
        "prettierd",
        -- code spell
        "codespell",
        "misspell",
        "cspell",
        -- markdown
        "markdownlint",
        -- rustywind for tailwindcss
        "rustywind",
        -- astro
        "astro-language-server",
        -- Solidity
        "solidity",
      },
    },
  },
}
