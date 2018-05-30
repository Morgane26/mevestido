require 'rest-client'

# How to ?
# weather = Weather.new("Paris,FR").call
class Weather
 def initialize(city)
   base_url = "http://api.weatherbit.io/v2.0/current"
   params = "?city=#{city}"
   key = "&key=#{ENV.fetch('WEATHER_API_KEY')}"
   @url = base_url + params + key
 end

 def call
   response = JSON.parse(RestClient.get @url)
   data = response["data"].first

   # pour remplir Openstruct faire un .call sur une instance et choisir
   # ce dont on a besoin :) A REVOIR IN CASE OF

   OpenStruct.new(
    icon: data["weather"]["icon"],
    description: data["weather"]["description"],
    temperature: data["temp"]
   #   max_temp: data["max_temp"],
   #   min_temp: data["min_temp"],
   #   temp: data["temp"],
   #   precip: data["precip"],
   )
 end
end
# https://api.weatherbit.io/v2.0/current?city=Raleigh,NC&key=e5ca9fa664124bc480ab84192e9992bf
