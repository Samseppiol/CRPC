#These amicable numbers seem tricky and I really didn't follow along the first time. I actually
#went and took a break after reading what these are at the start of the video.
#I have come back with a fresh mind and I think I understand.
# For example the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110
#Add all those together and that makes 284. so d(220) = 284. In the same instance 1, 2, 4, 71, 142 = 220.
#So d(284) = 220. Still a little bit tricky to wrap my head around these ones.
#in this exercise we want to evaluatew the sum of all amicable numbers under 10000

require 'mathn'

class Integer

  def dsum
    return 1 if self < 2
    #It is going to give us all of the prime divisors.
    pd = prime_division.flat_map{ |n, p| [n]*p }
    #First add 1 into the array then add this in to our combination block.
    #Call size on this so it goes all the way from 1 to the end of our array and call flat map on it.
    #You can always add array elements together.
    #We are then getting a set of prime divisors and calling flat map and passing it a nested block, the combination ones
    # which is all the different combinations that are in our prime divisors then it will map the
    #multiplication method and then at the end we are grabbing uniq which is the only ones that match then
    #using inject and + it is adding together all those values. Complex stuff!
    ([1] + (1..pd.size).flat_map{ |e| pd.combination(e).map{ |f| f.reduce(:*) }}).uniq.inject(:+)
  end

  def find_d_sum(n)
    n.times.inject do |sum, cur|
      other = cur.dsum
      (cur != other && other.dsum == cur) ? sum + cur : sum
    end
  end

end

p find_d_sum(10000)
