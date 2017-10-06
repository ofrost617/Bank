require_relative './account.rb'
require_relative './transaction_formatter.rb'

class Statement

  attr_reader :transaction_log

  HEADER = "date || credit || debit || balance\n"

  def initialize(transaction = TransactionFormatter.new)
    @transaction = transaction
    @transaction_log = []
  end

  def add_transaction(type, amount, balance)
    new_transaction = @transaction.add(type, amount, balance)
    @transaction_log << new_transaction
  end  
  
  def print_statement
    puts create_statement(transaction_log)
  end

  private

  def create_statement(transaction_log)
    HEADER + transaction_list(transaction_log)
  end

  def transaction_list(_transaction_log)
    @transaction_log.join("\n")
  end
  
end
