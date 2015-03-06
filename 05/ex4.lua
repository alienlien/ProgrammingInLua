function C_m(array, m)
    n = #array
    rest = gen_rest_array(array)
 
    if n < m then
        return nil
    end

    if m == 0 then
        return {}
    end

    C_1 = C_m(rest, m-1)
    C_2 = C_m(rest, m)

    result = {}
    for k, v in ipairs(C_1) do
        result[k] = table.pack(array[1], table.unpack(C_1))
    end

    n_1 = #C_1
    for k, v in ipairs(C_2) do
        result[n_1 + k] = v
    end
    return result
end

function gen_rest_array(array)
    result = {}
    for i, item in ipairs(array) do
        if i ~= 1 then
            result[i-1] = item
        end
    end
    return result
end
