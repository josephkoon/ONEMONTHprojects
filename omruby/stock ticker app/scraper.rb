require 'mechanize'
agent = Mechanize.new

#make it look like a user
agent.user_agent_alias = 'Mac Safari'

#get amazon webpage
page = agent.get('https://www.amazon.com/')

#save search form on page
search_form = page.form

#ask for search term
print 'What do you want to search amazon for?'
search_terms = gets.chomp

#set the search field to the search term phrase
search_form['field-keywords'] = search_terms

#submit the search and save the page
page = search_form.submit

#get the items on the page with the css class .s-result-item
items = page.css('.s-result-item')

#print each item 
items.each do |item|
	puts "#{item.css('h2').text}, #{item.css('.s-price').text}"
end



