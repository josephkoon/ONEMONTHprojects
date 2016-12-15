require 'koala'

@graph = Koala::Facebook::API.new("EAACEdEose0cBAGwjVv6jZAIoKqbLlP3Q7mA9elbg6sgOWncYVUpdsMiNvFJZBuGHcyy4DpARIdvBDRO3VTdFwg1EsMshGsZBNSxuQWs8zLbVKNefl0bDJ38DdXTZBrx1HjoWEfRq6058LfCsKRn6CxzZA2bqJCvbuIvA2DZBZC4gAZDZD")

profile = @graph.get_object("me")
friends = @graph.get_connections("me", "friends")

puts profile["bio"]
puts profile["link"]

puts friends

#post to profile page
# @graph.put_connections("me", "feed", message: "I am writing on my wall from koala ruby API")



