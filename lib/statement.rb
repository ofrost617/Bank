require_relative './account.rb'

# statement.rb
class Statement

  attr_reader :header, :logs

  def initialize
    @header = 'date || credit || debit || balance'
  end
  
  def create_statement(account)
    @logs = ''
    account.transaction_details.each do |log|
      @logs += "#{log[0]} || #{log[1]} || #{log[2]} || #{log[3]}\n"
    end
  end

  def print_statement
    puts "#{@header}\n#{@logs}"
  end
  

end
