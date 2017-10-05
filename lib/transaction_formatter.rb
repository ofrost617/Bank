class TransactionFormatter
  
  attr_reader :date, :transaction_log

  def initialize
    @transaction_log = []
  end
  

  def add(type, amount, balance)
    if type == :credit
      @transaction_log << format_credit(type, amount, balance)
    else
      @transaction_log << format_debit(type, amount, balance)
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


