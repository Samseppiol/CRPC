#defining our class.
class ApiConnector
  #Using attr accessor so attributes of the class can be called outside the class.
attr_accessor :title, :description, :url
#Defining a test method.
  def test_method
  puts 'Testing class call.'
  end
end
#Declaring a variable, 'api' to our class.
api = ApiConnector.new
api.url = "http://google.com/"
puts api.url
#Calling our test_method.
api.test_method
