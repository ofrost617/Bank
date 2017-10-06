class Transaction_log

  def initialize
  end
  
  def add_transaction(type, amount, balance)
    new_transaction = @transaction.add(type, amount, balance)
    @transaction_log << new_transaction
  end 

end
