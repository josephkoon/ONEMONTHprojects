require 'rubygems'
require 'twilio-ruby'

def text(message)
	account_sid = 'AC923fb2fb4fdd81ede093979ef3b85767'
	auth_token = '0dda8689c9d2e77cc383344a3509a8ff'

	client = Twilio::REST::Client.new account_sid, auth_token
	client.messages.create(
		from: '+12409494774',
		to: '+17032033084',
		body: message
	)
end

#text("hello there")




require 'stock_quote'

def stock_ticker(ticker)
	#StockQuote(class from library) :: Stock.quote (methods)
	stock = StockQuote::Stock.quote(ticker).last_trade_price_only

	account_sid = 'AC923fb2fb4fdd81ede093979ef3b85767'
	auth_token = '0dda8689c9d2e77cc383344a3509a8ff'

	client = Twilio::REST::Client.new account_sid, auth_token
	client.messages.create(
		from: '+12409494774',
		to: '+17032033084',
		body: "The price of #{ticker} is $#{stock}"
	)
end

["AAPL","GOOG","FB"].each do |stock|
	stock_ticker(stock)
end