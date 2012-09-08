require 'five_leaves/lazy_enum'
require 'five_leaves/enum_util'

class Range
  def size
    last - first + 1
  end

  def stutter
    (size * size).times.lazy_map { |x| first + (x / size) }
  end

  def squared
    (size * size).times.lazy_map { |x| first + (x % size) }
  end

  def pairs
    stutter.lazy_zip squared
  end

  def * n
    (size * n).times.lazy_map { |x| first + (x % size) }
  end

  def ** n
    (size * n).times.lazy_map { |x| first + (x / n) }
  end

  def pair_with range
    (self * range.size).lazy_zip(range ** self.size)
  end
end
