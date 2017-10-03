require_relative './bank.rb'
require_relative './transacton_log.rb'

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
    @transaction_details << [Time.now.strftime('%m/%d/%Y'), amount, nil, @balance]
  end

  def debit(amount)
    raise 'Insufficient funds to withdraw money' if @balance == 0
    @balance -= amount
    @transaction_details << [Time.now.strftime('%m/%d/%Y'), nil, amount, balance]
  end
end
