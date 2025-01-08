-- ~/.config/nvim/lua/plugins/org-mode.lua
-- URL: https://github.com/nvim-orgmode/orgmode
-- FROM: Quickstart

return {
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- setup org-mode
      require("orgmode").setup({
        org_agenda_files = "~/Notes/Org/**/*",
        org_default_notes_file = "~/Notes/Org/Default.org",
      })
    end,
  },
}
