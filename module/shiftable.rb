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

  def key_arrays(key)
    split = key.split(//)
    integers = split.map { |element| element.to_i }
    cons = []
    integers.each_cons(2) { |integer| cons << integer }
    cons
  end
end
