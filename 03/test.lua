#!/usr/bin/env lua
local tolerance = 10
function isturnback(angle)
    angle = angle % 360
    print("After % 360 ->", angle)
    return (math.abs(angle - 180) < tolerance)
end

print("Read the angle: ")
n = io.read()
print("Turn back? -> ", isturnback(n))
