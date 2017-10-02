require_relative '../lib/account.rb'

describe Account do
  subject { described_class.new }

  it 'creates a new account of class Account' do
    expect(subject).to be_a(Account)
  end
  
end
