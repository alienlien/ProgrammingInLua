function fromto(n, m, step)
    s = {start = n-step, last = m, step = step}
    return iter, s, s.start
end

function iter(s, i)
    if i < s.last then
        i = i + s.step
        return i 
    end

    return nil
end
