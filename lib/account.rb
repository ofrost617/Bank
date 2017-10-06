require_relative './bank.rb'
require_relative './statement.rb'
require_relative './transaction_formatter.rb'
require_relative './transaction_log.rb'

class Account
  attr_reader :balance, :transaction_details

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end
end
