class Hash
  def keys_of(*arguments)  #splat added so number of arguments not specified

   output_array = []
     arguments.each do |country|  #in case input is several arguments(countries, loop through input like an array)
      self.each do |animal_key, country_value|  #.self tells method to go through the hash (in this case animals)

       if country_value == country   #if the country_value inside hash equals the country input from arguments
       output_array << animal_key  #add the corresponding animal_key to output hash 
       end
      end
    end
    return output_array
 end
end
