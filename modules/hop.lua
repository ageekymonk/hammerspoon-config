local hotkey = require 'hs.hotkey'
local window = require 'hs.window'

local function module_init()
    local mash = config:get("hop.mash", { "cmd", "ctrl", "alt", "shift" })
    local keys = config:get("hop.keys", {
        UP = "north",
        DOWN = "south",
        LEFT = "west",
        RIGHT = "east",
    })

    for key, direction_string in pairs(keys) do
        local direction = direction_string:sub(1,1):upper()..direction_string:sub(2)
        local fn = window['focusWindow' .. direction]
        if fn == nil then
            error("The direction must be one of north, south, east, or west. Not " .. direction_string)
        end

        hotkey.bind(mash, key, function()
            local win = window.focusedWindow()
            if win == nil then
                return
            end
            fn(win)
        end)
    end
end


return {
    init = module_init
}
