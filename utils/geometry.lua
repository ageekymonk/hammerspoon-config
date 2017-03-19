local geometry = {}

function geometry.pointInRect(rect, point)
    return point.x >= rect.x and
           point.y >= rect.y and
           point.x <= rect.x + rect.w and
           point.y <= rect.y + rect.h
end

return geometry
