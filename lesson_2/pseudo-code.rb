=begin
  
Given two integers

Define a method that returns the sum of two integers
  - set the args to num1 and num2
  - define method as num1 + num2
  - end method
  - print method
  

START

# Given two integers

SET sum() method
SET args to num1 and num2
SET method to num1 + num2

PRINT sum() 

=end


=begin

Given an array of strings:

Define a method that returns all the strings concatenated together
  - set iterator to 0
  - for each iteration add the string to the index of the next string
  - iterator = iterator + 1
  - print string


START

Given an array of strings:

SET concatenate(array) method
SET iterator = 0
SET loop
SET array[iterator] << array[iterator+1]

PRINT value of each index of the array added together

=end

=begin

Given an array of integers, define a method that returns every other element
  - define method called every_other
  - create empty variable called new_array
  - for each index of the array:
    - if the index %2 != 0 then delete
    - else add number to new_array
  - Return new_array


Given an array of integers

START

SET every_other(array)
SET new_array = "" variable
SET array.each 
  IF index %2 != 0 delete
  ELSE add number to new_array

PRINT new_array

END

=end

=begin

Given a character and a string, return index of the char's 3rd occurence
  - define a method called every_third
  - set count to 0
  - once count hits the given charcter in the string
    - count = count +1
  - once count reaches 3
    - return index of the position
  - if count != 3 return nil


START

SET method every_third(char, string)
SET count = 0

WHEN index of string  = char
  count = count + 1

WHEN count = 3
  RETURN index of string position 


END

=end

=begin

Given two arrays, return the result of merging arrays.
  (elements of first array should be even indexes)
  (elements of second array should be odd indexes)

  - define method merge that takes two arrays (array1, array2)
  - create new variable called new_array
  - if index of new_array %2 = 0 add from array1
  - else add from array2
  - Return new_array


START

SET method merge(array1, array2)
SET new_array
  WHEN new_array index is even
    push from unshift of array1
  WHEN new_array index is odd
    push from unshift of array2

PRINT new_array

END

=end



