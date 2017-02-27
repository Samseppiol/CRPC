#Polymorphism is when you have a class inheriting from a parent class.
# When that inherited class starts to change the behaviour of a method and or process
#from the parent class.


#this is our parent class. The big dog. All our baby classes inherit from here.
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
#We define a new method for this example.
  def api_logger
    puts 'API connector starting...'
  end
end

#We are creating a new class and using the '<' symbol to inherit methods from the other class.

class SmsConnector < ApiConnector
  def send_sms
    puts 'Sending SMS'
  end
end

class PhoneConnector < ApiConnector
#We define a new method here that is the exact same name as the method above.
#We display a different message for this example to see what ruby does in the terminal.
  def api_logger
    #We put super in, this will run both methods and effectively display both messages.
    #However the method up the top will be displayed first because of order of operations.
    
    super
    puts 'Phone call from an API connection'
  end
  #We see after we run this code, this method is the one that runs.
  #not the one above. This is Polymorphism.

  def send_phone_call
    puts 'Making a phone call'
  end
end

class MailConnector < ApiConnector
  def send_email
    puts 'Sending an email.'
  end
end

phone = PhoneConnector.new('This is a title', 'This is a description', 'http://google.com')

#We call this new method.
phone.api_logger
