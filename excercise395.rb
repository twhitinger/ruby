require 'minitest/autorun'

class Test < Minitest::Test

  def test_truth
    assert(2 + 2 == 4)
  end
  def test_fallacy
    assert(2 + 2 == 5)
  end
end
