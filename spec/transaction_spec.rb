require_relative '../lib/transaction.rb'

describe Transaction do

  it 'has details of each transaction in an array' do
    transaction = Transaction.new
    expect(transaction.details).to be_a(Array)
  end

end

  # account = Account.new
  #   account.credit(5)
  #   expect(account.transaction_details).to eq([5, nil, 5])