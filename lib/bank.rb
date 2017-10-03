require_relative './account'

# account.rb
class Bank

def withdraw(account, amount)
  account.debit(amount)
  "Thank you for your withdrawl, your current balance is now £#{account.balance}"
end


end
