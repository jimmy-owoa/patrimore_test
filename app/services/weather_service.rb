require "httparty"
class WeatherService
  def initialize
    @api_key = Rails.application.credentials.weatherapi.api_key
  end
  
  def get_weather_data(q)
    response = HTTParty.get("https://api.weatherapi.com/v1/current.json?key=#{@api_key}&q=#{q}&aqi=no")
    response.parsed_response
  end
end
