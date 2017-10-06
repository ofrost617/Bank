require_relative './account'

# account.rb
class Bank
  def withdraw(account, amount)
    account.debit(amount)
    "Your balance is now £#{account.balance}"
  end

  def deposit(account, amount)
    account.credit(amount)
    "Your balance is now £#{account.balance}"
  end
end
