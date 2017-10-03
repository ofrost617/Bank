require_relative '../lib/bank.rb'
require_relative '../lib/statement.rb'
require_relative '../lib/account.rb'

describe Bank do
  subject { described_class.new }

  it 'can request withdrawl' do
    account = Account.new
    account.credit(5)
    expect(bank.withdraw(2)).to eq("Thank you for your withdrawl, your current balance is now £3")
  end
  

end
