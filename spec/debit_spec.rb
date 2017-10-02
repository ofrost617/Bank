require_relative '../lib/account.rb'

describe Account do
  subject { described_class.new }

  context 'new account created and has money added' do
    before(:each) do
      subject.credit(5)
    end

    it 'can have money debited' do
      subject.debit(2)
      expect(subject.balance).to eq(3)
    end

    it 'message shows new balance when money withdrawn' do
      expect(subject.debit(3)).to eq('Thank you for your withdrawl, your current balance is now £2')
    end
  end
end
