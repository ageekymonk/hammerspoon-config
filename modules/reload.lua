local hotkey = require 'hs.hotkey'

return {
  init = function()
    reload_keys = reload_keys or {{"cmd", "ctrl", "alt"}, "r"}
    hotkey.bind(config:get("reload.mash", reload_keys[1]), config:get("reload.key", reload_keys[2]), hs.reload)
  end
}
