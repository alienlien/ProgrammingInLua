for x = 1, 10, 2 do
    print("x = ", x)
end

print("----------------")

for y = 1, 10 do
    print("y = ", y)
end

print("----------------")

for z = 3, 10 do
    print("z = ", z)
end

print("----------------")
-- Initialize the table a
a = {10, 20, 30}
a["x"] = 200
a.y = "test value"

print("Ready to print the table a:")
for k, v in pairs(a) do
    print(">> key =", k, ", value =", v)
end

print("----------------")
print("Print the sequence only:")
for k, v in ipairs(a) do
    print(">> key =", k, ", value =", v)
end

print("----------------")
x = "This is a book - lord of the ring -la la la."
for k, v in string.gmatch(x, "%w+") do
    print(">> key =", k, ", value =", v)
end
