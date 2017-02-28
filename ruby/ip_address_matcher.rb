#we are looking for a regular expression that will match all the values from
#172.16.0.0 to 172.31.255.255
IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

#Once again writing our method to implement the regular expression above.
def is_valid_ip_address?(ip)
  ip =~ IP_ADDRESS_REGEX
end

#this one is obviouslly to high so will be invalid.
p is_valid_ip_address?("999.16.0.0") ? "valid" : "Invalid"
#This one is within the parameters so this will be valid.
p is_valid_ip_address?("172.16.0.0") ? "valid" : "Invalid"
#This one is the very end of the parameters and will be valid.
p is_valid_ip_address?("172.31.255.255") ? "valid" : "Invalid"
#This one is outside of the parameters so will return invalid.
p is_valid_ip_address?("172.31.255.256") ? "valid" : "Invalid"


#Go to rubular.com
#Great tool to test out regular expressions in ruby.
