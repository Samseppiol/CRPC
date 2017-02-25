#What are method arguments?
#A machine makes base ball bats.
#Raw machine is placed in the machine, cuts it and polishes it.
#Lastly it outputs the baseball bats.
#Method arguments would be the raw wood.
#The method would be the machine.
#The baseball bats are whats returned by the method.

#basic method.
# def full_name(first_name, last_name)
#   first_name + " " + last_name
# end
#
#
# puts full_name('Jack', 'Hage')

# def print_address city:, state:, zip:
# puts city
# puts state
# puts zip
# end
#
# print_address city: "Melbourne", state: "VIC", zip: 3000


# def sms_generator api_key:, num:, msg:, locale:
#
# end
#
# sms_generator num: '0400133513', api_key: 'This is an api key lol', msg: "sup, this is a message.", locale: 'Aus'


def stream_movie title:, language:
  puts title
  puts language
end


stream_movie title: 'Black Hawk Down', language: 'English'
