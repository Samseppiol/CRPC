require 'rubygems'
require 'httparty'

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

#not recommended lol, comment it out it pulls in a mass of data.
# puts response.body
#Returns 200
# puts response.code
#Will return 0k
# puts response.message
#This pulls everything out as a hash format
puts response.headers.inspect
