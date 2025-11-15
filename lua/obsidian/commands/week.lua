local util = require "obsidian.util"
local log = require "obsidian.log"

---@param client obsidian.Client
return function(client, data)
  -- wday starts the count at 1 with Sunday
  -- We want to offset to Monday
  local offset_days = 2 - os.date("*t").wday
  local note = client:daily(offset_days)
  client:open_note(note, { template = 'weekly.md' })
end
