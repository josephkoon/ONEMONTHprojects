# search ruby gem google finance
# ruby toolbox - https://www.ruby-toolbox.com/

require 'stock_quote'


def stock_ticker(ticker)
	#StockQuote(class from library) :: Stock.quote (methods)
	stock = StockQuote::Stock.quote(ticker).last_trade_price_only
	return "The price of #{ticker} is $#{stock}"
end

puts stock_ticker("AAPL")
puts stock_ticker("TSLA")