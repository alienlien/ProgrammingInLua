function fromto(n, m)
    s = {start = n-1, last = m}
    return iter, s, s.start
end

function iter(s, i)
    if i < s.last then
        i = i + 1
        return i 
    end

    return nil
end
