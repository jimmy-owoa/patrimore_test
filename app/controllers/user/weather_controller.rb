class User::WeatherController < User::UserController

  def index
  end
  
  def show
    iata_code = params[:iata_code].strip.upcase
  
    # Validate IATA code
    if iata_code !~ /^[A-Z]{3}$/
      render partial: 'weather_results', locals: { weather_data: nil, user_searches: nil, iata_code: iata_code }
      return
    end
    weather_data = WeatherService.new.get_weather_data(iata_code)
    search = current_user.user_searches.create(iata_code: iata_code, weather_data: weather_data)
    user_searches = current_user.user_searches.order(created_at: :desc)
    render partial: 'weather_results', locals: { weather_data: weather_data, user_searches: user_searches }
  end
end
