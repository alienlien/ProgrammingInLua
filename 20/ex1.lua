function rconcat(l, sep)
    sep = sep or " "
    
    if type(l) ~= "table" then
        return l
    end

    local result = {}
    for i = 1, #l do
        result[i] = rconcat(l[i], sep)
    end
    
    return table.concat(result, sep)
end
