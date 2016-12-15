require 'sinatra'
require 'stock_quote'

#post welcome to one month ruby
get '/' do
	@greeting = "Welcome to One Month Ruby"
  	erb :index
end

#post the current stock price as a greeting
post '/' do
	@greeting = stock_price(params[:ticker])
	erb :index
end

#set the /aapl to the current stock price
get '/:ticker' do
	@greeting = stock_price(params[:ticker])
	erb :index
end

#get the stock price
def stock_price(ticker)
	stock_price = StockQuote::Stock.quote(ticker).last_trade_price_only
	"The price of #{ticker} is $#{stock_price}"
end


