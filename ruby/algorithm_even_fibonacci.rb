#Just like in the earlier exercise we want to create an algorithm around the fibonacci sequence.
#Except this time we want to find the sum of EVEN only numbers up to four million.

class ProjectEulerTwo

  def initialize(max)
    @num_1 = 0
    @i = 0
    @sum = 0
    @num_2 = 1
    @max = max
  end

  def even_fibonacci
    #we want to loop until we hit the max which is 4 million
    #while i is less than or equal to max I want to increment the iterator by the current and previous values.
    while @i <= @max
      @i = @num_1 + @num_2
      #Herewe want to add the value of the iterator to the sum with each iteration. Only if i is even
      @sum += @i if @i % 2 == 0

      #Now we want to swap the values of num 1 and num 2 and then we want to set num 2 equal to the iterator.
      @num_1 = @num_2

      @num_2 = @i
    end
    #now return the sum
    @sum
  end
end

#Define a variable to our class and pass in the max number we want, in this case it is 4 million
result = ProjectEulerTwo.new(4_000_000)
#Call the even_fibonacci method on result.
p result.even_fibonacci
#The answer is 4613732
