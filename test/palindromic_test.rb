require 'test_helper'
require 'five_leaves/palindromic'

class PalindromicTest < MiniTest::Unit::TestCase
  def test_palindrome
    assert(palindromic?(nil))
    assert(palindromic?(9009))
    assert(!palindromic?(1234))
    assert(!palindromic?(1224))
    assert(palindromic?(11211))
    assert(!palindromic?(11238))
  end
end
