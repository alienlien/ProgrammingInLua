function unpack_rest(...)
    a = {}
    input = {...}
    if #input <= 1 then
        print("There is no other elements rather than the first one.")
        return
    end

    for k, v in pairs(input) do
        if k ~= 1 then
            a[k-1] = v
        end
    end
    return table.unpack(a)
end
