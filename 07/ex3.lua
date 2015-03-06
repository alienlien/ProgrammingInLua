function allwords()
    local line = io.read()
    local pos = 1
    words = {}
    return function()
        while line do
            local s, e = string.find(line, "%w+", pos)
            if s then
                pos = e + 1
                w = string.sub(line, s, e)
                if not words[w] then
                    words[w] = true
                    return w
                end
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end
