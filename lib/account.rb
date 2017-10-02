# account.rb
require_relative './transaction.rb'

class Account

  attr_reader :balance

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

  def credit(amount)
    @amount_added = amount
    @balance += amount
  end

  def debit(amount)
    @amount_withdrawn = amount
    @balance -= amount
  end

  def transaction_summary
    transation_details

end
