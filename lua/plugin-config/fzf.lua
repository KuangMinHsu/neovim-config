local fzf = require "fzf".fzf
local action = require "fzf.actions".action

coroutine.wrap(function()
  -- items is a table of selected or hovered fzf items
  local shell = action(function(items, fzf_lines, fzf_cols)
    -- only one item will be hovered at any time, so get the selection
    -- out and convert it to a number
    local buf = tonumber(items[1])

    -- you can return either a string or a table to show in the preview
    -- window
    return vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  end)

  fzf(vim.api.nvim_list_bufs(), "--preview " .. shell)
end)()

