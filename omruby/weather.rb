require 'forecast_io'
require 'geocoder'

ForecastIO.api_key = 'aec5c501f6e1ec832818a55bf0f9fa6e'

def current_weather(location)
	if coordinates = Geocoder.coordinates(location)
		forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
		return "#{forecast.summary} and #{forecast.temperature} in #{location}"
	else
		return "Location not found"
	end
end

puts current_weather("McCarren Park, Brooklyn NYC")
puts current_weather("")





