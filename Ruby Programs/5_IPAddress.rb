sampleIP = "123.255.198.255"
# y.x.x.x
# y btw 0 - 127 A class
# y bte 128 - 191 B class
# y bte 128 - 191 C class
# y bte 128 - 191 D class
# y bte 128 - 191 E class
listIP = sampleIP.split(".")
print "#{sampleIP}: "
case listIP[0].to_i
when 0...127
    puts "Class A"
when 128...191
    puts "Class B"
when 192...223
    puts "Class C"
when 224...239
    puts "Class D"
when 240...255
    puts "Class E"
else
    puts "Not defined correctly"
end