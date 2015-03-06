function printValue(n, x)
    print("n = ", n, ", x = ", x)
end

print("Enter the value:")
n = tonumber(io.read())
if n > 10 then
    print(">> ", n, " > 10")
    local x = 10
    printValue(n, x)
else
    print(">> ", n, " <= 10")
    printValue(n, x)
end

printValue(n, x)
