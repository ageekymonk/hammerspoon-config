local hotkey = require 'hs.hotkey'
local window = require 'hs.window'
local geometry = require 'hs.geometry'
local mouse = require 'hs.mouse'
local screen = require 'hs.screen'

local position = import('utils/position')
local monitors = import('utils/monitors')

local function init_module()
  monitors_base_keys = monitors_base_keys or {"ctrl", "alt", "cmd" }
  for id, monitor in pairs(monitors.configured_monitors) do
    hotkey.bind(monitors_base_keys, "" .. id, function()
        local win = window.focusedWindow()
        if win ~= nil then
          win:setFrame(position.full(monitor.dimensions))
        end

    end)
  end
end

return {
  init = init_module
}
