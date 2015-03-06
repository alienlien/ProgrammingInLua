a = {}
print("Input the length of array: ")
n = io.read()
for i = 1, n do
    a[i] = io.read()
end

print("Length of array: ", #a)
a[1] = nil
print("Now... Length of array: ", #a)
a["1"] = "test"
print("Hmm... Length of array: ", #a)

for i = 1, #a do
    print(">>", i, "th element of the array: ", a[i])
end
