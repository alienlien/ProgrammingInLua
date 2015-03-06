data = {
    {name = "apple", price = 100},
    {name = "microsoft", price = 50},
    {name = "zoo", price = 10},
}
table.sort(data, function(a, b) return (a.name > b.name) end)
print(">> 1. By Name")
for i = 1, #data do
    print(i, "th element: Name: ", data[i].name, ", Price: ", data[i].price)
end

print("-----------------------------")
table.sort(data, function(a, b) return (a.price > b.price) end)
print (">> 2. By Price")
for i = 1, #data do
    print(i, "th element: Name: ", data[i].name, ", Price: ", data[i].price)
end
