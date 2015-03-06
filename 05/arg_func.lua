function test_arg(arg)
    print("Old=", arg.old)
    print("New=", arg.new)
    print("Swap them now")
    return {new=arg.old, old=arg.new}
end
