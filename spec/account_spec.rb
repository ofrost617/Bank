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

  it 'message shows new balance when money added' do
      expect(subject.credit(5)).to eq("Thank you for your deposit, your current balance is now £5")
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

    it 'adds details of a debit transaction to the array' do
      subject.debit(5)
      expect(subject.transaction_details[1]).to eq([nil, nil, 5, 0])
    end

    it 'message shows new balance when money withdrawn' do
      expect(subject.debit(3)).to eq("Thank you for your withdrawl, your current balance is now £2")
    end

  end

  it 'adds details of a credit transaction to the transactions array' do
    subject.credit(5)
    expect(subject.transaction_details[0]).to eq([nil, 5, nil, 5])
  end

end
