require_relative '../lib/account.rb'

describe Account do
  subject { described_class.new }

  it 'message shows new balance when money added' do
    expect(subject.credit(5)).to eq('Thank you for your deposit, your current balance is now £5')
  end

  it 'adding money changes balance' do
    subject.credit(5)
    expect(subject.balance).to eq(5)
  end
end
