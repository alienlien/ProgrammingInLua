page = [[
This
is
a
book
,
am
I
right
?
\"
\\
\'
]]

print("Page=", page)

line = io.read()
n = tonumber(line)
if n == nil then
    print(line .. " is not a number")
    os.exit()
end
print("line <", line, "> is a number! x 2 = ", n * 2)
