x = 10
a = {p = print}
a.p(">> X = ", x)
print = math.sin
a.p(">> print(pi) = ", print(math.pi))
sin = a.p
sin("This is a test")
