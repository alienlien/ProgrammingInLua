function unpack_array(arg)
    print("Length of the array: ", #arg)
    for k, v in pairs(arg) do
        print(k, "th element :", v)
    end
    print(table.unpack(arg))
end
