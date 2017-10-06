require_relative './bank.rb'

# account.rb
class Account
  attr_reader :balance, :transaction_details

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transaction_details = []
    @current_time = Time.now.strftime('%m/%d/%Y')
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end
end
