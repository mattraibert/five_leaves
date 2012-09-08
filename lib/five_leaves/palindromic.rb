require 'five_leaves/enum_util'

module FiveLeaves
  def self.palindromic?(n)
    string = n.to_s
    (0..string.size/2).all_match? { |i| string[i] == string[-1-i] }
  end
end
