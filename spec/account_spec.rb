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

  context 'new account created and has money added' do
    before(:each) do
      subject.credit(5)
    end

    it 'adding money changes balance' do
      expect(subject.balance).to eq(5)
    end

    it 'can have money debited' do
      subject.debit(2)
      expect(subject.balance).to eq(3)
    end
  end

  # it 'summarises the transaction' do
  #   account = Account.new
  #   account.credit(5)
  #   account.debit(2)
  #   expect(account.summary).to eq("Your new balance is £3")

  it 'adds the details of the transaction to an array' do
    account = Account.new
    account.credit(5)
    expect(account.transaction_details).to eq([5, nil, 5])
  end
  

end
