require 'rubygems'
require 'httparty'

#Lets create a custom class

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  #Pass it a service and a page. Create an instance variable. Setting it to a hash and a nested hash.
  #Inside the query there will be a site and a service.
  def initialize(service, page)
    @options = {query: {site: service}}
  end

  #Going to bring in all the questions.
  #Call the self class gets then pass in the api end point
  #Then pass in our options instance variable which is defined above.
  def questions
    self.class.get('/2.2/questions', @options)
  end

  def users
    self.class.get('/2.2/users', @options)
  end
end


#Lets create an instance of our stackexchange class

#Pass in stack overflow and 1 because we want the first page of results
stack_exchange = StackExchange.new('stackoverflow', 1)
#Calling opur questions method.
# puts stack_exchange.questions

#now lets bring in the users
puts stack_exchange.users
