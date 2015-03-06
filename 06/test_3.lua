lib = {}
lib.foo = function(a, b) return a * b end
lib.goo = function(a, b) return a + b end

lib_2 = {
    foo = function(a, b) return a * b end,
    goo = function(a, b) return a + b end
}

lib_3 = {}
function lib_3.foo (a, b) return a * b end
function lib_3.goo (a, b) return a + b end

libs = {lib, lib_2, lib_3}
for k, v in ipairs(libs) do
    print(k, "th function")
    print(">> foo: ", v.foo(3, 5))
    print(">> goo: ", v.goo(3, 5))
end
