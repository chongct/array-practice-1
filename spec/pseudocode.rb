class String
  def dashes
    # normal cases
    # - self must be a string ()
    # - all string must be a digit
    # - put dash respectively 1357 => 1357
                              # 0246 = 0-2-4-6

    # edge
    # - if it's not a digit, don't add any dash (edge)

    #split the string into an Array
    #run an each loop for the Array
    #if element is last number in array don't add anything
    #else if even number add a dash behind the respective element
    # else don't add anything
    #end the each loop
    #join back the array into a string

    # [0,2,5,4,8,6]
    # [0-, 2, 5,...,6-] this cannot happen

    # input is a string
    # turn string into array
    # for every element in array, check if 0 || % 2 == 0, if true get_index, check check if 0 || % 2 == 0
    # true, insert a '-'
  end
end

class Array
  def frequent
    # normal case
    # - it has to be an array
    # - [a, a, a, b] => 'a(3 times)'
    # - [x, a, a, b] => 'a(2 times)'


    # error case
    # - array cannot be empty

    # edge case
    # - two frequent items inside arr = [a, a, b, b] = 'there are two most freq items'


    # arr
    # uniq_arr
    # hash
    # find the highest one in the hash

    # Find all the unique element in the array #uniq
    # For each unique element, loop through and do a count
    # Find the element with the highest count
    # Return the element and its count
  end

  def remove_duplicate
    # normal case
    # - must be an array
    # - check if array items is either number or string
    # - ['abc', 'a', 'abc'] => ['abc', 'a']
    # - ['a', 'b', 'c'] => ['a', 'b', 'c']

    # error case
    # - cannot be empty
    # - nothing besides number and string for array item

    # edge case




    # input is an array
    # convert all into lowercase
    # hash this array, everything's value is 0
    # run through array, for every element that appears value +1
    #   start: [a=>0,b=>0,c=>0,a=>0]
    #   end: [a=>1,b=>1,c=>1,a=>2]
    # if value  >1, remove item from array
  end
end

def union(arr1, arr2)
end

def mergeArray(arr1, arr2)
end
