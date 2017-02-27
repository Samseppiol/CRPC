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
    #You have to declare your private method here.
    #secret_method
    #However if we comment out secret method, we won't be able to call it below.
  end

  def test_initialize
    puts @title
    puts @description
    puts @url

  end

#Writing a private method, same as a normal one just write private above like so...
  private #Can also be called protected., similar to private but a bit different.
  def secret_method
    puts 'A secret message from within the parent class.'
  end
end

#We are creating a new class and using the '<' symbol to inherit methods from the other class.

class SmsConnector < ApiConnector
  def send_sms
    puts 'Sending SMS'
  end
end

class PhoneConnector < ApiConnector
  def send_phone_call
    puts 'Making a phone call'
  end
end

class MailConnector < ApiConnector
  def send_email
    puts 'Sending an email.'
  end
end

#Defining phone as our variable.
phone = PhoneConnector.new('This is a title', 'This is a description', 'this is not a url')

phone.send_phone_call

#Here we try to call the secret method. Ruby will throw an error, because it is not declared at the top.
phone.secret_method
