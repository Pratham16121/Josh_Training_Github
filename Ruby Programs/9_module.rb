module PlayStore
    class Application
        def start
            puts "Start called successfully"
        end
    end
end
class Application
    def start_of_2nd_class
        puts "Start 2 call successsfully"
    end
end

app = Application.new
app.start_of_2nd_class
# app start will give a error

app1 = PlayStore::Application.new
app1.start