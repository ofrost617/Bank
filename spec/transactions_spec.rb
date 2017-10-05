require_relative '../lib/account.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/transactions.rb'


describe Transaction do
  subject { described_class.new }

  it 'adds transactions to an array' do
    subject.add(:credit, 5, 5)
    expect(subject.logs[0]).to eq([:credit, 5, 5])
  end
  
  it 'formats a transaction' do
    
  end
  

end
