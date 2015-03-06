#!/usr/bin/env lua
function norm (x, y)
    return (x^2 + y^2)^0.5
end

function twice (x)
    return 2*x
end 

a = norm(5, 12)
print("Twice A = ", twice(a))
