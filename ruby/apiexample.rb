#Require in our gems. For this exercise I had to gem install httparty
require 'rubygems'
require 'httparty'
#Create a class
class EdutechionalResty
  #Include our gem again, I didn't really understand the significance of this.
  include HTTParty
  #Provide the base uri for what we want to pull, in this instance it is a heroku deployed app of Jordans.
  base_uri "edutechional-resty.herokuapp.com/"
  #create a method to be used later.
  def posts
    #Telling the method to get posts.json
    self.class.get('/posts.json')
  end

end

#Defining a variable
x = EdutechionalResty.new
#Printing out our pulled information from the api.
puts x.posts
