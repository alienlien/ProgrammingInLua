require 'arg_func'

describe("Simple test", function()
    it("Normal swap", function()
        assert.same(arg_func.test_arg{old=1, new=2}, {old=2, new=1})
    end)
end)
