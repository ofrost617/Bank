# account.rb
class Account

  attr_reader :balance, :transaction_details

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transaction_details = []
  end

  def credit(amount)
    @balance += amount
    @transaction_details << [nil, amount, nil, @balance]
    "Thank you for your deposit, your current balance is now £#{@balance}"
  end

  def debit(amount)
    @balance -= amount
    @transaction_details << [nil, nil, amount, balance]
    "Thank you for your withdrawl, your current balance is now £#{@balance}"
  end

end
