require_relative './account.rb'
require_relative './transaction_log.rb'

class Statement

  HEADER = "date || credit || debit || balance\n" 
  
  def initialize(log = TransactionLog.new)
    @log = log
  end

  def print_statement
    puts create_statement
  end

  private

  def create_statement
    HEADER + transaction_list
  end

  def transaction_list
    @log.transaction_log.join("\n")
  end
  
end
