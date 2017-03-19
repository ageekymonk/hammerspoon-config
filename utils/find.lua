local fnutils = require 'hs.fnutils'
local window = require 'hs.window'
local mouse = require 'hs.mouse'
local audio = require 'hs.audiodevice'

local find = {
    window = {},
    windows = {},
    audio_device = {}
}

local geom = import('utils/geometry')

function find.window.by_title(title)
    return fnutils.find(window.allWindows(), function(window)
        return string.match(window:title(), title) ~= nil
    end)
end

function find.window.underneath_mouse()
    local pos = mouse.get()
    return fnutils.find(window.orderedWindows(), function(window)
        return geom.pointInRect(window:frame(), pos)
    end)
end

function find.window.by_application_title(title)
    return fnutils.find(window.allWindows(), function(window)
        return string.match(window:application():title(), title) ~= nil
    end)
end

function find.windows.by_title(title)
    return fnutils.filter(window.allWindows(), function(window)
        return string.match(window:title(), title) ~= nil
    end)
end

function find.windows.by_application_title(title)
    return fnutils.filter(window.allWindows(), function(window)
        return string.match(window:application():title(), title) ~= nil
    end)
end

function find.windows.underneath_mouse()
    local pos = mouse.get()
    return fnutils.filter(window.orderedWindows(), function(window)
        return geom.pointInRect(window:frame(), pos)
    end)
end

function find.audio_device.by_name(name)
    return fnutils.find(audio.allOutputDevices(), function(device)
        return string.match(audio:name(), name) ~= nil
    end)
end

return find

