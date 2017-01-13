require 'minitest/pride'
require 'minitest/autorun'
require './currency.rb'

class CurrencyTest < Minitest::Test
  def test_currency_creation
      Currency.new(amount: 34, code:'USD')
  end

  def test_equal_currencies
    a = Currency.new(amount: 34, code:'USD')
    b = Currency.new(amount: 34, code:'USD')
    assert a == b

    c = Currency.new(amount: 34, code:'EUR')
    refute a == c
  end

  def test_added_same_currency
    a = Currency.new(amount: 34, code:'USD')
    b = Currency.new(amount: 56, code:'USD')
    a + b


  end
end
