-- genCombNum returns the combinational number for (n, m)
-- It is used as a reference to find all the combination.
function genCombNum(n, m)
    if n < m then
        return 0
    end

    if m == 0 then
        return 1
    end

    if n == m then
        return 1
    end

    return genCombNum(n-1, m-1) + genCombNum(n-1, m)
end
