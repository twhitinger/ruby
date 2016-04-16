asset_equal('apple', 'apple')
assert_includes([1, 2, 3, 4, 5], 3)
assert_instance_of(String, 42)
assert_includes(['a', 'b', 'c'], 'd')
assert('apples'=='oranges')
assert_raises(StandardError) do
  raise ZeroDivisionError, "Oops!"
end
assert_instance_of(Hash, {})
