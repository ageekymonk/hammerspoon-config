local hotkey = require 'hs.hotkey'
local window = require 'hs.window'
local mouse = require 'hs.mouse'
local geometry = require 'hs.geometry'

local match_dialgoue = import('utils/match_dialogue')

local function module_init()
    local function match_data_source()
        local results = {}

        for _, win in ipairs(window.allWindows()) do
            local title = win:title()

            if title:len() > 0 then
                table.insert(results, {
                    string = win:application():title() .. ' - ' .. title,
                    window = win
                })
            end
        end
        return results
    end

    local function match_selected(match)
        match.window:focus()

        if config:get('app_selector.move_mouse', true) then
            local center = geometry.rectMidPoint(match.window:frame())
            mouse.set(center)
        end
    end

    local matcher = match_dialgoue(match_data_source, match_selected)

    hotkey.bind(config:get('app_selector.mash', { "ctrl" }), config:get('app_selector.key', "tab"), function()
        matcher:show()
    end)
end

return {
    init = module_init
}

