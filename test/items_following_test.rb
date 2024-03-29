require 'minitest/autorun'
require 'five_leaves/items_following'

class ItemsFollowingTest < Minitest::Test
  def test_items_following
    data = %w(I want text that follows this THESE TWO NOT THIS)
    result = []
    data.items_following(/this/) do |items|
      result << items[0]
      result << items[1]
    end
    assert result.include? "THESE"
    assert result.include? "TWO"
    assert !result.include?("NOT")
    assert !result.include?("this")
  end
end
