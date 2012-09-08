require 'test_helper'
require 'five_leaves/palindromic'

class PalindromicTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(FiveLeaves.palindromic?(nil))
    assert(FiveLeaves.palindromic?(9009))
    assert(!FiveLeaves.palindromic?(1234))
    assert(!FiveLeaves.palindromic?(1224))
    assert(FiveLeaves.palindromic?(11211))
    assert(!FiveLeaves.palindromic?(11238))
  end
end
