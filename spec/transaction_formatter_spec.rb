require_relative '../lib/account.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/transaction_formatter.rb'

describe TransactionFormatter do
  subject { described_class.new }

  it 'formats a credit transaction' do
    date_now = Time.now.strftime('%d/%m/%Y')
    transaction_line = "#{date_now} || 5.00 || || 5.00"
    expect(subject.add(:credit, 5, 5)).to eq transaction_line
  end

  it 'formats a debit transaction' do
    date_now = Time.now.strftime('%d/%m/%Y')
    transaction_line = "#{date_now} || || 5.00 || 0.00"
    expect(subject.add(:debit, 5, 0)).to eq transaction_line
  end
  
end
