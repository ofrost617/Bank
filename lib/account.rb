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
  
  def statement_show
    header
    # "#{@transaction_details[0]} || #{@transaction_details[1]} || #{@transaction_details[2]} || #{@transaction_details[3]}"
  end
  

  private 
  def header
    "date || credit || debit || balance"
  end


end
