# Implementation of a list using a Native array --> ruby does this automatically
class ArrayList
  def initialize
    @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] # native array w fixed capacity, indexing only, size is number of elements added to array
    @size = 0 # use as index, the last index used in the array
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # @storage[@size] = 0
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end

    return false
  end

  def size
    return @size
  end

  def max
    max = @storage[0]
    @size.times do |i|
      max = @storage[i] if @storage[i] > max
    end

    return max
  end

  def to_s
    # don't print underlying data structure, just actual values
    # @storage.to_s
    str = ""
    @size.length.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[##{str[0..-3]}]"
  end
end
