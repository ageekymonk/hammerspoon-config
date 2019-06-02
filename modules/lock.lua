local hotkey = require 'hs.hotkey'

local function module_init()
  lock_keys = lock_keys or {{"cmd", "ctrl", "alt"}, "l"}
  local mash = config:get("lock.mash", lock_keys[1])
  local key = config:get("lock.key", lock_keys[2])

  hotkey.bind(mash, key, function()
                os.execute("pmset displaysleepnow")
  end)

end

return {
  init = module_init
}
