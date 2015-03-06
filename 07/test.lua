function values(t)
    local i = 0
    return function()
        i = i + 1
        return t[i]
    end
end

x = {100, 200, 300}
iter = values(x)
while true do
    element = iter()
    if not element then
        print("No element")
        break
    end

    print("Element: ", element)
end

for element in values(x) do
    print("-- Element: ", element)
end
