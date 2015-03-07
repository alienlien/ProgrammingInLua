function isValid(a)
    local n = #a

    local m = 0
    for k, v in pairs(a) do
        m = m + 1
    end

    return n == m
end
