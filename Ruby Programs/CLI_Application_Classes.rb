class Country
    include Criterias

    def initialize (data_list)
        @country_name = data_list[0]
        @population = data_list[1]
        @gdp = data_list[2]
        @states = data_list[3]
        @army_strength = data_list[4] 
        @dev_undev = data_list[5]    
    end

    def add_countries_data_into_csv()   
        CSV.open('country_data.csv', 'a+') do |csv|
            csv << [@country_name, @population, @gdp, @states, @army_strength, @dev_undev]
        end
    end
end

def data_of(country_name)
    f = CSV.open('country_data.csv', 'r')
    f.each do |row|
        if row[0] == country_name
            return row
        end
    end
end
