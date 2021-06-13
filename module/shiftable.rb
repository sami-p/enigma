module Shiftable

  def offset(date)
    integer = date.to_i
    squared = integer ** 2
    string = squared.to_s
    offset = string.chars.last(4)
    offset.map do |num|
      num.to_i
    end
  end

  def key_array(key)
    split = key.split(//)
    integers = split.map { |element| element.to_i }
    cons = []
    integers.each_cons(2) { |integer| cons << integer }
    joined = cons.map do |con|
      [con.join.to_i]
    end
    joined.flatten
  end

  def set_shift(key_array, offset)
    [key_array, offset].transpose.map { |sub| sub.inject(:+) }
  end
end
