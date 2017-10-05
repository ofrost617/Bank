class Transaction
  
attr_reader :date

  def add(type, amount, balance)
    if type == :credit
      format_credit(type, amount, balance)
    else
      format_debit(type, amount, balance)
    end
    
  end

  private

    def date
    return Time.now.strftime('%d/%m/%Y')
  end

  def two_d_p(amount)
    '%.2f' % amount
  end

  def format_credit(type, amount, balance)
    "#{date} || #{two_d_p(amount)} || || #{two_d_p(balance)}"
  end

  def format_debit(type, amount, balance)
    "#{date} || || #{two_d_p(amount)} || #{two_d_p(balance)}"
  end

end


