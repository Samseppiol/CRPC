class ApiConnector
  attr_accessor :title, :description, :url

  #Everything put inside here will get run when you run ApiConnector.new
  #We can even name our arguments
  def initialize( title, description, url)
    #storing inside instance variables so they can be used anywhere else in the class.
    @title = title
    @description = description
    @url = url
  end

  def test_initialize
    puts @title
    puts @description
    puts @url

  end
end

api = ApiConnector.new( 'The boss', 'Boss description', 'google.com')

api.test_initialize
