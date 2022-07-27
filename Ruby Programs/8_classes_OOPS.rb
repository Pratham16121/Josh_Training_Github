class Josh
    def initialize(state = "HIGH")
        @state = state
    end
    def say
        puts "How's the JOSH?"
        puts "#{@state} Sir"
    end
end

object = Josh.new
object.say