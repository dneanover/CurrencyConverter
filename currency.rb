class Currency
  attr_reader :amount, :code

  def initialize(amount:, code:)
    @amount = amount
    @code = code
  end

  def ==(other)
    @amount == other.amount && @code == other.code
  end

  def +(other)
    if @code == other.code
      Currency.new(amount: @amount + other.amount, code: @code)
    end
  end

end


# Should be created with an amount and a currency code
# Should equal another Currency object with the same amount and currency code
# Should NOT equal another Currency object with different amount or currency code
# Should be able to be added to another Currency object with the same currency code
# Should be able to be subtracted by another Currency object with the same currency code
# Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Should be able to be multiplied by a Fixnum or Float and return a Currency object
# Currency.new should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.
