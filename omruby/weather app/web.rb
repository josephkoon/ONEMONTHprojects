require 'sinatra'
require 'forecast_io'
require 'geocoder'

#post welcome to one month ruby
get '/' do
	@greeting = "Welcome to One Month Ruby"
  	erb :index
end

#post the current stock price as a greeting
post '/' do
	@greeting = current_weather(params[:location])
	erb :index
end

#set the /aapl to the current stock price
get '/:ticker' do
	@greeting = current_weather(params[:location])
	erb :index
end

#get the stock price
def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $#{stock_price}"
end



def current_weather(location)
	if coordinates = Geocoder.coordinates(location)
		forecast = ForecastIO.forecast(coordinates[0], coordinates[1]).currently
		"#{forecast.summary} and #{forecast.temperature} in #{location}"
	else
		"Location not found"
	end
end