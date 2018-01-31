class String
  def dashes
    return 'only numbers allowed' unless self.match(/^\d+$/)
    string = ''
    (self.length - 1).times do |index|
      num_one = self[index].to_i
      num_two = self[index + 1].to_i
      if (num_one.even? && num_two.even?)
        string += num_one.to_s + '-'
      else
        string += num_one.to_s
      end
    end
    string + self[self.length - 1]
  end
end

class Array
  def frequent
    return 'empty array' if self.length == 0
    collection = Hash.new(0)
    self.each do |element|
      collection[element] += 1
    end
    result = collection.max_by{|key, value| value}
    "#{result[0]} (#{result[1]} times)"
  end

  def remove_duplicate
    return 'empty array' if self.length == 0
    self.map do |element|
      return 'only strings and numbers' unless element.is_a? String or element.is_a? Integer

      if element.is_a? String
        element.downcase!
      end
    end
    self.uniq
  end
end

def union(arr1, arr2)
  arr1.concat(arr2)
  arr1.remove_duplicate.sort
end

def merge_array(arr1, arr2)
  arr1.concat(arr2).reverse!
  arr1.remove_duplicate.reverse
end

# string_one = '025486'
# p string_one.dashes

# array_two = [3, 'a', 'a', 'a', 2, 3, 'a', 3, 'a', 2, 4, 9, 3]
# p array_two.frequent

# array_three = [1, 'a', 'A', 'b', 2, 2]
# p array_three.remove_duplicate

# p union([1, 2, 3], [100, 2, 1, 10])

# p merge_array([1, 2, 3], [2, 30, 1])
