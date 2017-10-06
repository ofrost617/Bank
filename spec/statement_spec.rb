require_relative '../lib/statement.rb'
require_relative '../lib/account.rb'

describe Statement do
  subject { described_class.new }

  # it 'shows statement' do
  #   account = Account.new
  #   account.credit(5)
  #   time = Time.now.strftime('%m/%d/%Y')
  #   header = "date || credit || debit || balance\n"
  #   first_log = "#{time} || 5.00 ||  || 5.00\n"
  #   subject.create_statement(account)
  #   expect { subject.print_statement }.to output("#{header}#{first_log}").to_stdout
  # end

  it 'has a header' do
    expect(Statement::HEADER).to eq("date || credit || debit || balance\n")
  end

  it 'prints a statement' do
    date_now = Time.now.strftime('%d/%m/%Y')
    subject.add_transaction(:debit, 5, 5)
    p subject.print_statement
    expect { subject.print_statement }.to output("date || credit || debit || balance\n#{date_now} || || 5.00 || 5.00\n").to_stdout
  end
  
  
end
