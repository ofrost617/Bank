require_relative '../lib/account.rb'

describe Account do
  subject { described_class.new }

  it 'is the class for a new account when it is created' do
    expect(subject).to be_a(Account)
  end

  it 'balance starts at 0' do
    account = Account.new
    expect(account.balance).to eq(0)
  end

  it 'can have money added' do
    account = Account.new
    account.credit(5)
    expect(account.balance).to eq(5)
  end

  it 'can have money debited' do
    account = Account.new
    account.credit(5)
    account.debit(2)
    expect(account.balance).to eq(3)
  end
end
