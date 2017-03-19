local hotkey = require 'hs.hotkey'

return {
  init = function()
    console_keys = console_keys or {{ "cmd", "ctrl", "alt" }, "c"}
    hotkey.bind(config:get("repl.mash", console_keys[1]), config:get("repl.key", console_keys[2]), hs.openConsole)
  end
}
