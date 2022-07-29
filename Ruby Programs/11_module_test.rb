module ABC
    def hi 
        puts "A module"
    end
end
module XYZ
    def hi 
        puts "B module"
    end
end

class MyClass
    include ABC
    include XYZ 
end

object = MyClass.new
object.hi