# account.rb
class Account
  attr_reader :balance

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

end
