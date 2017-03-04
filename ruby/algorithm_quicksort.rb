#In this exercise jordan goes through creating the quicksort algorithm
#a bit of metaprogramming and open up the default array clas in ruby!

class Array
  def quicksort
    #basically return an empty array if it is empty lol.
    return [] if empty?

    #We have to pick out our pivot element, with our dummy array.
    # [34, 2, 1, 5, 3]
    #Delete at doesnt delete, kinda misleading it just pulls out a value from the array.
    # We then call the random method which is inbuilt to ruby I assume and then pass in size.
    pivot = delete_at(rand(size))
    #now we set the values of our left and right side values using a ruby method partition.
    #Then use metaprogrammiong and call a method as a symbol.
    #Partition is a method you can call on an array, it is going to look at this array and store two values
    left, right = partition(&pivot.method(:>))

    #Now we will return some optional values
    #What we are returning is a splat argument because we are actually calling the quicksort method on itself.
    #So baswically this entire process is going to be run every single time.
    #basically what this does is break our array in to two new arrays.
    #For example our array above # [34, 2, 1, 5, 3], we will pull 1 out as the pivot
    #So our pivot = 1 then we still have # [34, 2, 1, 5, 3]
    #then that array will be split up in to left side values and right side values like this
    # [34, 2] [5, 3] then they will be compared to each other and sorted accordingly then eventually
    #they will be all put back together once they are sorted.
    return *left.quicksort, pivot, *right.quicksort
  end
end

#Set an array.
arr = [34, 2, 1, 5, 3]
#Call our quicksort method
p arr.quicksort 
