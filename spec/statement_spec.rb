require_relative '../lib/statement.rb'
require_relative '../lib/account.rb'

describe Statement do
  subject { described_class.new }

  let(:account) { double :account }

  it 'shows statement' do
    account = Account.new
    account.credit(5)
    time = Time.now.strftime('%m/%d/%Y')
    header = "date || credit || debit || balance\n"
    first_log = "#{time} || 5.00 ||  || 5.00\n"
    subject.create_statement(account)
    expect { subject.print_statement }.to output("#{header}#{first_log}").to_stdout
  end

  it 'can access transaction_details' do
  end
end
