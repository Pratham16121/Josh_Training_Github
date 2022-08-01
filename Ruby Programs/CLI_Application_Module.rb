module NewCountry
   
    def get_info()
        print "Country Name: "
        country_name = gets.chomp
        print "Population: "
        population = gets.chomp
        print "GDP: "
        gdp = gets.chomp
        print "States: "
        states = gets.chomp
        print "Army Strength: "
        army_strength = gets.chomp
        print "Developed or Undeveloped (U/D): "
        dev_undev = gets.chomp
        return [country_name, population, gdp, states, army_strength, dev_undev]
    end

end

module Criterias

    def loan_from_IMF(gdp)
        if gdp > 2.5
            return true
       end
       false
    end

    def seat_in_UN(population)
        if population > 100
            return true
        end
        false
    end

    def winning_the_war(population_of_country1, army_strength_country1, population_of_country2, army_strength_country2)
        if population_of_country1 * 0.2 + army_strength_country1 * 0.8 > population_of_country2 * 0.2 + army_strength_country2 * 0.8
            return true
        end
        false
    end

end