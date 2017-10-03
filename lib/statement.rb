require_relative './account.rb'

# statement.rb
class Statement
  def statement(account)
    puts 'date || credit || debit || balance'
    logs = ''
    account.transaction_details.each do |log|
      logs += "#{log[0]} || #{log[1]} || #{log[2]} || #{log[3]}\n"
    end
    puts logs
  end
end
