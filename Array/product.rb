require 'byebug'

def product
  nums = [1, 2, 3, 4, 5]
  left = []

  nums.each_with_index do |number, index|
    if index == 0
      left[0] = nums[0]
    else
      left[index] = left[index - 1 ] * nums[index]
    end
  end

  right = []
  length = nums.length - 1


  while length >= 0
    if length == nums.length - 1
      right[length] = nums[length]
    else
      right[length] = right[length + 1] * nums[length]
    end

    length = length - 1
  end

  result = []

  nums.each_with_index do |number, index|
    if index == 0
      result[index] = right[index + 1]
    elsif index == nums.length - 1
      result[index] = left[index - 1]
    else
      result[index] = left[index - 1] * right[index + 1]
    end
  end

  p result
end

product()