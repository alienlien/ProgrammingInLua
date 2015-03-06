print("Insert the highest degree:")
d = io.read()
a = {}
for i = 1, d+1 do 
    print(">> Insert the coefficient for degree", i-1)
    c = io.read()
    a[i] = c
end

print("Insert the value of x:")
x = io.read()
temp = 0
for i = 1, d+1 do
    temp = temp + a[i] * (x ^ (i - 1))
end
print("Answer = ", temp)
