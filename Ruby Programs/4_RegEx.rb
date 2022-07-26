MyString = "+917415198663 Pratham Goel pratham.goel16@gmail.com M rs.4000"
print "Name: ", MyString.match(/[A-Z][a-z]*\s[A-Z][a-z]*\s/)
puts " "
print "Phone Number: ", MyString.match(/(0\d{10}|\d{10}|"+91\d{10}")\s/)
puts " "
print "Email: ", MyString.match(/[A-Z0-9a-z_.]*@\w*.com/)
puts " "
print "Ammount: ", MyString.match(/rs.\d+/)
puts " "
print "Gender: ", MyString.match(/\s["M", "F"]\s/)