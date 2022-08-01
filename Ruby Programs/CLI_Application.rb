require 'csv'
require '.\CLI_Application_Module.rb'
require '.\CLI_Application_Classes.rb'

include NewCountry

while(true)
    print "\n\n1. Checking weather the country can get a loan or not\n"
    print "2. Check for Seat in UN\n"
    print "3. Check war between two countries\n"
    print "4. Add New Country into Data\n"
    print "5. Exit     \nEnter Choice: "
    choice = gets.to_i
    case choice
    when 1
        print "Enter the country name: "
        country_name = gets.chomp
        new_country = Country.new(data_of(country_name))
        print new_country.loan_from_IMF(data_of(country_name)[2].to_f)? "#{country_name} can get a loan": "#{country_name} can not get loan"
    when 2
        print "Enter the country name: "
        country_name = gets.chomp
        new_country = Country.new(data_of(country_name))
        print new_country.seat_in_UN(data_of(country_name)[1].to_f)? "#{country_name} can get a seat in UN": "#{country_name} can not get a seat in UN"
    when 3
        print "Enter the country name: "
        country_name = gets.chomp
        data_of_country_1 = data_of(country_name)
        country_1 = Country.new(data_of_country_1)
        print "Enter the second country name: "
        country_name = gets.chomp
        data_of_country_2 = data_of(country_name)
        if country_1.winning_the_war(data_of_country_1[2], data_of_country_1[4], data_of_country_2[2], data_of_country_2[4])
            print "#{data_of_country_1[0]} will win"
        else 
            print "#{data_of_country_2[0]} will win"
        end

    when 4 
        new_country = Country.new(get_info)
        new_country.add_countries_data_into_csv()
    when 5
        break
    end
end
