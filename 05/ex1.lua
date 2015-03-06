function concatenate(...) 
    s = ""
    for k, v in pairs{...} do
        print(">> Contatenate ", k, "^th element: ", v)
        s = s .. v
    end
    print("Result: ", s)
    return s
end
