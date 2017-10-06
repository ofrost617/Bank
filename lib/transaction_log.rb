require_relative './transaction_formatter.rb'

class TransactionLog

  attr_reader :transaction_log

  def initialize(transaction = TransactionFormatter.new)
    @transaction = transaction
    @transaction_log = []
  end

  def add_transaction(type, amount, balance)
    new_transaction = @transaction.add(type, amount, balance)
    @transaction_log << new_transaction
  end 

end
