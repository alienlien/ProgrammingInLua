function newpoly(poly)
    return function(x)
        n = #poly
        sum = 0
        for i = 1, n do
            sum = sum + poly[i] * (x ^ (n - i))
        end
        return sum
    end
end
