require 'test_helper'
require 'five_leaves/lazy_enum'

class LazyEnumTest < Minitest::Test
  def test_lazy_select_can_select_from_infinite_series
    assert_equal [0, 2, 4, 6, 8], (0..(1.0/0.0)).lazy_select { |x| x % 2 == 0 }.take(5)
  end

  def test_lazy_map_can_map_inifinite_series
    assert_equal [0, 2, 4, 6, 8], (0..(1.0/0.0)).lazy_map { |x| x * 2 }.take(5)
  end

  def test_series
    assert_equal [0, 2, 4, 6, 8], FiveLeaves.series { |x| x * 2 }.take(5)
    assert_equal [2, 4, 6, 8, 10], FiveLeaves.series(1) { |x| x * 2 }.take(5)
  end

  def test_lazy_zip_does
    zip = FiveLeaves.series { |x| x }.lazy_zip(FiveLeaves.series { |x| x+1 })
    assert_equal [0, 1], zip.next
    assert_equal [1, 2], zip.next
  end
end
