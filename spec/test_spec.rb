require_relative '../test.rb'
array_three = [1, 'a', 'A', 'b', 2, 2]
array_four_one = [1, 2, 3]
array_four_two = [100, 2, 1, 10]
array_five_one = [1, 2, 3]
array_five_two = [2, 30, 1]

describe Array do
  describe '#frequent' do
    before(:each) do
      @array_two = [3, 'a', 'a', 'a', 2, 3, 'a', 3, 'a', 2, 4, 9, 3]
    end

    it 'check for empty array' do
      expect([].frequent).to eq 'empty array'
    end

    it 'should return a string denoting the item and number of items it occurs' do
      expect(@array_two.frequent).to eq 'a (5 times)'
    end
  end

  describe '#remove_duplicate' do
    it 'should only contain strings and integers' do
      expect([true].remove_duplicate).to eq 'only strings and numbers'
    end

    it 'should remove duplicate elements' do
      expect(array_three.remove_duplicate).to eq [1, 'a', 'b', 2]
    end

    it 'should remove duplicate elements for long strings' do
      expect(['abcd', 'a', 'abcd'].remove_duplicate).to eq ['abcd', 'a']
    end

    it 'check for empty array' do
      expect([].remove_duplicate).to eq 'empty array'
    end
  end
end

describe String do
  describe '#dashes' do
    before(:each) do
      @string_one = '025486'
    end

    # checking that the output is a string
    it 'must be a string' do
      expect(@string_one.dashes).to be_an_instance_of(String)
    end

    it 'only numbers allowed' do
      expect('025a486'.dashes).to eq 'only numbers allowed'
    end

    it 'should insert dashes between each two even numbers' do
      expect(@string_one.dashes).to eq '0-254-8-6'
    end
  end
end

describe '#union' do
  it 'compute union of two arrays' do
    expect(union(array_four_one, array_four_two)).to eq [1, 2, 3, 10, 100]
  end
end

describe '#merge_array' do
  it 'merge two arrays and removes all duplicate elements' do
    expect(merge_array(array_five_one, array_five_two)).to eq [3, 2, 30, 1]
  end
end

# dashes
# normal cases
# self must be a string (don't need to check any more since it is in String class)
# all string must be digits
# put dash respectively or correctly

# edge case
# if it is not a digit, don't add any dash


# frequent
# normal cases
# it has to be an array

# error case
# array cannot be empty

# edge case
# two frequent items inside array eg [a, a, b, b]


# remove_duplicate
# normal cases
# must be an array
# check if array items is either number or string
# ['abc', 'a', 'abc'] => ['abc', 'a']
# ['a', 'b', 'c'] => ['a', 'b', 'c']

# error case
# cannot be empty
# nothing besides number and string for array item


# union
# normal cases
# check if union method gives correct output

# error case
# check for correct number of parameter


# merge array
# normal cases
# check if merge method gives correct output

# error case
# check for correct number of parameter
