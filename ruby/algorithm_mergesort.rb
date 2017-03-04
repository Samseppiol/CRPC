#Lets create two methods.
#pass ion list as our argument
def merge_sort(list)
  #If list length is less than or equal to 1 then go to list.
  if list.length <= 1
    list
    #else we will create three variables
  else
    #declaring our mid as list length divided by two
    mid = (list.length / 2).floor
    #It calls the list array and saying give me the first element[0] go all the way to the middle and subtract 1 from it
    # And bring that value to me
    left = merge_sort(list[0..mid - 1])
    #Then this one does the same except return to me whatever is to the right of the mid value.
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  #Pretty self explantory. If left is empty go to right and vice versa.
  if left.empty?
    right
  elsif right.empty?
    left
    #if the first letter of the left side is less than the right side
  elsif left.first < right.first
    #We want to return an array, we cant just call left first
    #We have to have it in brackets because we are adding it to an array
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

#Create an array
arr = [4, 1, 5, 1, 33, 312]

#Call our method and pass it our array
p merge_sort(arr) 
