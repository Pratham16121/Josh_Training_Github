arr = [10,20,30,40,50]
puts "each -------------"
arr.each {|ele| print ele, " "}
puts ""
puts "do -------------"
arr.each do |ele| print ele, " " end
puts ""
puts "each_with_index -------------"
arr.each_with_index do |ele, i| print "#{ele}, #{i} | " end
puts "", "range -------------"
(1..10).each { print "Hi " }
puts "", "until loop"
i = 0
until i == 5
    i += 1
    print i, " "
end