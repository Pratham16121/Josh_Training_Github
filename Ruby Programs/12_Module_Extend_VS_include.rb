module Identity
    def say
        puts "Identity Module"
    end
end

class Include
    include Identity
end
class Extend
    extend Identity
end
class Prepend
    prepend Identity
end
 
Include.new.say     # New Object 
Extend.say          # just the class
Prepend.new.say     # New object

print Include.ancestors     # include class is after the module 
print Prepend.ancestors     # Prepend class is before the module
print Extend.ancestors      # Extend does not have Identity in the ancestors list