class Mammals
    def breathe
        puts "Inhale and exhale"
    end
end
class Cat < Mammals
    def speak
        puts "Meow"
    end
end

cat = Cat.new
cat.speak
cat.breathe
puts ""

class Bird
	def fly
		puts "Yes, I can fly"
	end
end
class Penguin 
	def fly
		puts "I would rather swim"
	end
end

penguin = Penguin.new
penguin.fly

class Mammals
    def breathe
        puts "Inhale and exhale"
    end
end
class Cat < Mammals
	def breathe
		super
		puts "Me too"
	end
    def speak
        puts "Meow"
    end
end

cat = Cat.new
cat.speak
cat.breathe
puts ""
