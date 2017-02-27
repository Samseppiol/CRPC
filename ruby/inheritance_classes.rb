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

#We are calling sms connector even though it is empty.
#But because we are inheriting things from the top class it will display the same.
sms = SmsConnector.new('This is a title', 'This is a description', 'http://google.com')

phone = PhoneConnector.new('This is a title', 'This is a description', 'http://google.com')

email = MailConnector.new('This is a title', 'This is a description', 'http://google.com')


# #Here we are even inheriting a method from the first class.
# sms.test_initialize
#Calling methods out of our above classes.
sms.send_sms
phone.send_phone_call
email.send_email
