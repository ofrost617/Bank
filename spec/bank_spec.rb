require_relative '../lib/bank.rb'

describe Bank do
  subject { described_class.new }

  it 'can request withdrawl' do
    account = Account.new
    account.credit(5)
    expect(subject.withdraw(account, 2)).to eq('Your balance is now £3')
  end

  it 'can request a deposit' do
    account = Account.new
    expect(subject.deposit(account, 2)).to eq('Your balance is now £2')
  end
end
