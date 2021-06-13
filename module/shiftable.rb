module Shiftable

  def offset(date)
    integer = date.to_i
    squared = integer ** 2
    string = squared.to_s
    offset = string.chop(4)
  end

  def key_arrays(key)
    elements = key.each_cons(2)
  end
end
