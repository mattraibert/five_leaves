require 'test_helper'
require 'five_leaves/palindromic'

class PalindromicTest < Minitest::Test
  def test_palindrome
    assert(FiveLeaves.palindromic?(nil))
    assert(FiveLeaves.palindromic?(9009))
    assert(!FiveLeaves.palindromic?(1234))
    assert(!FiveLeaves.palindromic?(1224))
    assert(FiveLeaves.palindromic?(11211))
    assert(!FiveLeaves.palindromic?(11238))
  end
end
