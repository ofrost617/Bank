require_relative '../lib/account.rb'

describe Account do
  subject { described_class.new }

  it 'creates a new account of class Account' do
    expect(subject).to be_a(Account)
  end

  it 'account balance starts at 0' do
    account = Account.new
    expect(account.balance).to eq(0)
  end
end
