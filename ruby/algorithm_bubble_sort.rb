# A bubble sort algorithm to review once again bubble sort on a high level
#iterates through every item on an array and it grabs a pair of number and compares them and sorts them accordingly.
#Performance wise it is horrible especially if you have a large array.
#But for education sake we will now build one.

def bubble_sort(array)
  #in computer science terms arrays are referred to as n
  n = array.length

  loop do
    #Basically what our loop/algorithm is going to do.
    #[1, 4, 1, 3, 4, 1, 3, 3]
    #[1, 1, 4, 3, 4, 1, 3, 3]
    #[1, 1, 3, 4, 4, 1, 3, 3]
    #[1, 1, 3, 4, 4, 1, 3, 3]
    #[1, 1, 3, 4, 1, 4, 3, 3]
    #[1, 1, 3, 4, 1, 3, 4, 3]
    #[1, 1, 3, 4, 1, 3, 3, 4]


    #Swapped is going to be equal to false until the very end.
    swapped = false

    #This is going to be total numbers of the array minus one.
    (n-1).times do |i|
      #The index of the array is the first value declared as i
      #if this element is greater than the next element
      if array[i] > array[i + 1]
        #Then swap the values around.
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
      end
      #Only going to break if swapped is not set to true.
      break if not swapped
  end

   #Then we want to return the array at the end of the method.
   array
end

#Define our array.
a = [1, 4, 1, 3, 4, 1, 3, 3]
#Then lets call our method and pass in our variable.
p bubble_sort(a)
