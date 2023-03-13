require 'test_helper'
require 'fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def setup # runs before each test, and `teardown`` , which runs after each test
    @fb = FizzBuzz.new
  end

  def test_converts_multiples_of_fifteen_to_fizzbuzz
    [15, 45, 90].each do |i|
        assert_equal 'FizzBuzz', @fb.convert(i)
    end
    # assert_equal 'FizzBuzz', @fb.convert(15)
    # assert_equal 'FizzBuzz', @fb.convert(45)
    # assert_equal 'FizzBuzz', @fb.convert(90)
  end

  def test_converts_multiples_of_five_to_buzz
    [5, 20, 100].each do |i|
        assert_equal 'Buzz', @fb.convert(i)
    end
    # assert_equal 'Buzz', @fb.convert(5)
    # assert_equal 'Buzz', @fb.convert(20)
    # assert_equal 'Buzz', @fb.convert(100)
  end

  def test_converts_multiples_of_three_to_fizz
    [3, 18, 42].each do |i|
        assert_equal 'Fizz', @fb.convert(i)
    end
    # assert_equal 'Fizz', @fb.convert(3)
    # assert_equal 'Fizz', @fb.convert(18)
    # assert_equal 'Fizz', @fb.convert(42)
  end

  def test_returns_same_number_for_other_numbers
    [1, 101, 2014].each do |i|
      assert_equal i.to_s, @fb.convert(i)
    end
  end

  def test_raises_argument_error_for_bad_argument
    skip 'not yet implemented'
    assert_raises(ArgumentError) { @fb.convert(-1) }
    assert_raises(ArgumentError) { @fb.convert(0) }
    assert_raises(ArgumentError) { @fb.convert(1.0) }
    assert_raises(ArgumentError) { @fb.convert('foo') }
    assert_raises(ArgumentError) { @fb.convert(nil) }
  end
end