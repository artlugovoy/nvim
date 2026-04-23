return {
  "chrisgrieser/nvim-lsp-endhints",
  event = "LspAttach",
  opts = {
    icons = {
      type = "󰜁 ",
      parameter = "󰏪 ",
      offspec = " ",
      unknown = " ",
    },
    label = {
      truncateAtChars = 20,
      padding = 1,
      marginLeft = 0,
      sameKindSeparator = ", ",
    },
    extmark = { priority = 50 },
    autoEnableHints = true,
  },
}
