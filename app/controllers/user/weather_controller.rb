class User::WeatherController < User::UserController
  def show
    iata_code = params[:iata_code]
    weather_data = WeatherService.new.get_weather_data(iata_code)
    render partial: 'weather_results', locals: { weather_data: weather_data }
  end
end
