-- Autocmds for Neovim configuration

-- Create a user command to clean all lazy plugins before updating
vim.api.nvim_create_user_command("LazyCleanPlugins", function()
  local lazy_root = vim.fn.stdpath("data") .. "/lazy"
  local handle = vim.loop.fs_scandir(lazy_root)

  if handle then
    while true do
      local name, type = vim.loop.fs_scandir_next(handle)
      if not name then break end

      if type == "directory" then
        local plugin_path = lazy_root .. "/" .. name
        -- Check if it's a git repo
        if vim.fn.isdirectory(plugin_path .. "/.git") == 1 then
          vim.fn.system({
            "git",
            "-C",
            plugin_path,
            "reset",
            "--hard",
          })
          vim.fn.system({
            "git",
            "-C",
            plugin_path,
            "clean",
            "-fd",
          })
        end
      end
    end
    vim.notify("All lazy plugins cleaned!", vim.log.levels.INFO)
  end
end, { desc = "Clean all lazy plugin repositories (reset local changes)" })

-- Optionally: Auto-clean plugins before lazy sync/update
-- Uncomment the following to automatically clean plugins before any Lazy operation
-- local lazy_augroup = vim.api.nvim_create_augroup("LazyAutoClean", { clear = true })
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "LazySync",
--   group = lazy_augroup,
--   callback = function()
--     vim.cmd("LazyCleanPlugins")
--   end,
-- })
