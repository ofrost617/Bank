require_relative '../lib/account.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/transaction_formatter.rb'


describe TransactionFormatter do
  subject { described_class.new }


  def date
    return Time.now.strftime('%d/%m/%Y')
  end

  it 'formats a credit transaction' do
    transaction_line = "#{date} || 5.00 || || 5.00"
    subject.add(:credit, 5, 5)
    expect(subject.transaction_log[0]).to eq transaction_line
  end

    it 'formats a debit transaction' do
    transaction_line = "#{date} || || 5.00 || 0.00"
    subject.add(:debit, 5, 0)
    expect(subject.transaction_log[0]).to eq transaction_line
  end
  
end
