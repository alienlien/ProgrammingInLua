function pairsByKeys (t, f)
    local a = {}
    for k in pairs(t) do
        table.insert(a, k)
    end
    table.sort(a)

    local i = 0
    return function()
        i = i + 1
        return a[i], t[a[i]]
    end
end
