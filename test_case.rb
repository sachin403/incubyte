# Test case Step-1

def test_add

        raise "Fail: Expected 0" unless add("") == 0
        raise "Fail: Expected 1" unless add("1") == 1
        raise "Fail: Expected 5" unless add("1,4") == 5
        raise "Fail: Expected 11" unless add("1,4,6") == 11

        puts "all test cases pass for step-1 , step-2" 
        
end
