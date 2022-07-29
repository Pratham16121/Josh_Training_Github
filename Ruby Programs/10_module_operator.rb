class Person
    include Comparable
    attr_accessor :name, :age

    def initialize (name, age)
        @name, @age = name, age
    end
    def <=>(other_object)
        age <=> other_object.age
    end
end

pratham = Person.new("Pratham", 20)
nandini = Person.new("Nandini", 20)
harsha = Person.new("Harsha", 20)
puts pratham == nandini