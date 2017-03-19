local hotkey = require 'hs.hotkey'
local window = require 'hs.window'

local function module_init()
  fullscreen_keys = fullscreen_keys or {{"cmd", "ctrl", "alt"}, "M"}
  local mash = config:get('fullscreen.mash', fullscreen_keys[1])
  local key = config:get('fullscreen.key', fullscreen_keys[2])

  hotkey.bind(mash, key, function()
                local win = window.focusedWindow()
                if win ~= nil then
                  win:setFullScreen(not win:isFullScreen())
                end
  end)
end

return {
  init = module_init
}
