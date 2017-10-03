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

  it 'has details of each transaction in an array' do
    expect(subject.transaction_details).to be_a(Array)
  end

  it 'cannot debit money when account is 0' do
    account = Account.new
    expect { account.debit(0) }.to raise_error 'Insufficient funds to withdraw money'
  end

  context 'new account created and has money added' do
    before(:each) do
      subject.credit(5)
    end

    it 'can have money credited' do
      expect(subject.balance).to eq(5)
    end

    it 'can have money debited' do
      subject.debit(2)
      expect(subject.balance).to eq(3)
    end

    it 'adds details of a debit transaction to the array' do
      time = Time.now.strftime('%m/%d/%Y')
      subject.debit(5)
      expect(subject.transaction_details[1]).to eq([time, nil, 5, 0])
    end

    it 'adds details of a credit transaction to the transactions array' do
      time = Time.now.strftime('%m/%d/%Y')
      expect(subject.transaction_details[0]).to eq([time, 5, nil, 5])
    end
  end
end
