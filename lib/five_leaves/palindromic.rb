require 'enum_util'

def palindromic?(n)
  string = n.to_s
  (0..string.size/2).all_match? { |i| string[i] == string[-1-i] }
end
