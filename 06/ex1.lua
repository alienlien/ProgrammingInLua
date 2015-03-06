function integral(f) 
    local epsilon = 1e-3
    return function(a, b) 
        if b < a then
            print("b(", b,") < a(", a, ").")
            return 0
        end

        num = math.floor((b-a) / epsilon)
        sum = 0
        x = a
        for i = 1, num do
            sum = sum + f(x) * epsilon
            x = x + epsilon
        end
        return sum
    end
end
