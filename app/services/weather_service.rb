require 'redis'
require 'httparty'

class WeatherService
  def initialize
    @api_key = Rails.application.credentials.weatherapi.api_key
    @cache = Redis.current
  end
  
  def get_weather_data(q)
    # Try to get the data from the cache
    cache_key = "weather:#{q}"
    cached_data = @cache.get(cache_key)

    if cached_data
      # If the data is in the cache, return it
      JSON.parse(cached_data)
    else
      # If the data is not in the cache, get it from the API
      response = HTTParty.get("https://api.weatherapi.com/v1/current.json?key=#{@api_key}&q=#{q}&aqi=no")
      parsed_response = response.parsed_response

      # Store the data in the cache
      @cache.set(cache_key, parsed_response.to_json)
      parsed_response
    end
  end
end
