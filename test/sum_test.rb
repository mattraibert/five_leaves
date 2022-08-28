require 'test_helper'
# added to ruby; documenting changed behavior
# require 'five_leaves/sum.rb'

class SumTest < Minitest::Test
  def test_sum
    assert_equal 10, [1, 2, 3, 4].sum
    assert_equal 0, [].sum
    # assert_equal "abc", ['a', 'b', 'c'].sum doesn't work anymore
  end
end
