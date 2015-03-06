function foo (str)
    if type(str) ~= "string" then
        error("String expected: ", 2)
    end
    print("This is a string: ", str)
end
