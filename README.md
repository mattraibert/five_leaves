# Five Leaves

a collection of useful ruby methods

## Examples

For more examples, see the [unit tests](https://github.com/mattraibert/five_leaves/blob/master/test/)


```
require 'five_leaves/lazy_enum'

def test_lazy_select_can_select_from_infinite_series
  assert_equal [0, 2, 4, 6, 8], (0..(1.0/0.0)).lazy_select { |x| x % 2 == 0 }.take(5)
end

def test_lazy_map_can_map_inifinite_series
  assert_equal [0, 2, 4, 6, 8], (0..(1.0/0.0)).lazy_map { |x| x * 2 }.take(5)
end

def test_series
  assert_equal [0, 2, 4, 6, 8], series { |x| x * 2 }.take(5)
  assert_equal [2, 4, 6, 8, 10], series(1) { |x| x * 2 }.take(5)
end

def test_lazy_zip_does
  zip = series { |x| x }.lazy_zip(series { |x| x+1 })
  assert_equal [0, 1], zip.next
  assert_equal [1, 2], zip.next
end
```
## Naming

Five Leaves is named for a [restaurant](http://www.fiveleavesny.com/) in Brooklyn, NY.

## Copyright

Copyright (c) 2012 Matt Raibert.
five_leaves is available under the GPL v3 see LICENSE.txt for further details.
