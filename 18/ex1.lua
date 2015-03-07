function isPowerOf(x, base)
    local base = base or 2
    local eps = 10e-6
    local power = math.log(x, base)
    local err = power - math.floor(power)
    return err < eps 
end
