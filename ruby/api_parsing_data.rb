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

# x.posts.each do |post|
#   puts post
# end

# or lets make it pretty
#this pulls out both strings that are the titles, really cool.
#We have successfully parsed the data, we have brought in the title and the description.
x.posts.each do |post|
  p "Title: #{post['title']} | Description: #{post['description']}"
end
