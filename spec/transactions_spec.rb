require_relative '../lib/account.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/transactions.rb'


describe Transaction do
  subject { described_class.new }


  def date
    return Time.now.strftime('%d/%m/%Y')
  end

  it 'formats a credit transaction' do
    transaction_line = "#{date} || 5.00 || || 5.00"
    expect(subject.add(:credit, 5, 5)).to eq transaction_line
  end

    it 'formats a debit transaction' do
    transaction_line = "#{date} || || 5.00 || 0.00"
    expect(subject.add(:debit, 5, 0)).to eq transaction_line
  end
  
end
