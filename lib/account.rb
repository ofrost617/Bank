require_relative './bank.rb'

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
    @transaction_details << [Time.now.strftime('%m/%d/%Y'), format('%.02f', amount), nil, format('%.02f', @balance)]
  end

  def debit(amount)
    raise 'Insufficient funds to withdraw money' if @balance.zero?
    @balance -= amount
    @transaction_details << [Time.now.strftime('%m/%d/%Y'), nil, format('%.02f', amount), format('%.02f', @balance)]
  end
end
